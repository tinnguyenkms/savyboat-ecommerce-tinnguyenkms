using ClassLibary.Objects.Enumerable;
using Library.DAL;
using Library.DTO;
using Library.DTO.BE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace Library.BLL
{
	public class ContextManager
	{
		private static UserDAL UserDB = new UserDAL();
		private static EmailSettingDAL EmailDB = new EmailSettingDAL();
		private static MenuDAL menudal = new MenuDAL();
		public static EmailSetting GetEmailInfo()
		{
			EmailSetting emailsetting = null;
			if (HttpContext.Current != null)
			{
				if (HttpContext.Current.Session["CACHE_EMAILSETTING"] == null)
				{
					emailsetting = ContextManager.EmailDB.GetAll().First<EmailSetting>();
					HttpContext.Current.Session["CACHE_EMAILSETTING"] = emailsetting;
				}
				emailsetting = (EmailSetting)HttpContext.Current.Session["CACHE_EMAILSETTING"];
			}
			return emailsetting;
		}
		public static User GetActor()
		{
			User actor = null;
			if (HttpContext.Current != null)
			{
				if (HttpContext.Current.Session["CACHE_USER"] == null)
				{
					if (!string.IsNullOrEmpty(HttpContext.Current.User.Identity.Name))
					{
						actor = (
							from p in ContextManager.UserDB.GetAll()
							where p.Id == new System.Guid(HttpContext.Current.User.Identity.Name)
							select p).First<User>();
						HttpContext.Current.Session["CACHE_USER"] = actor;
					}
				}
				actor = (User)HttpContext.Current.Session["CACHE_USER"];
			}
			return actor;
		}
		public static void ClearCache()
		{
			HttpContext.Current.Session["CACHE_USER"] = null;
			HttpContext.Current.Session["CACHE_PERMISSION"] = null;
			HttpContext.Current.Session["CACHE_PAGEMAP"] = null;
			HttpContext.Current.Session["CACHE_OBJECTCHAIN"] = null;
			HttpContext.Current.Session["CACHE_USERGROUP"] = null;
		}
		public static System.Collections.Generic.IList<SitemapDTO> listsitemap()
		{
			System.Collections.Generic.IList<SitemapDTO> list = new System.Collections.Generic.List<SitemapDTO>();
			if (HttpContext.Current.Session["CACHE_SITEMAP"] == null)
			{
				System.Collections.Generic.IList<Menu> listmenu = ContextManager.menudal.GetList();
				foreach (Menu item in listmenu)
				{
					SitemapDTO itemsitemap = new SitemapDTO();
					itemsitemap.Id = item.Id;
					itemsitemap.Name = item.Name;
					if (item.MenuDetails != null)
					{
						itemsitemap.ListSitemap = ContextManager.BuildChild((
							from p in item.MenuDetails                            
							orderby p.MenuOrder
							select p).ToList<MenuDetail>());
					}
					list.Add(itemsitemap);
				}
				HttpContext.Current.Session["CACHE_SITEMAP"] = list;
			}
			else
			{
				list = (System.Collections.Generic.IList<SitemapDTO>)HttpContext.Current.Session["CACHE_SITEMAP"];
			}
			return list;
		}
		private static System.Collections.Generic.IList<SitemapDTO> BuildChild(System.Collections.Generic.IList<MenuDetail> list)
		{
			System.Collections.Generic.IList<SitemapDTO> listsub = new System.Collections.Generic.List<SitemapDTO>();
			foreach (MenuDetail obj in (
				from p in list
				orderby p.MenuOrder
				select p).ToList<MenuDetail>())
			{
				SitemapDTO itemsub = new SitemapDTO();
				itemsub.Id = obj.Id;
				itemsub.Name = obj.Name;                                
				if (obj.NavigateURL == null && obj.ObjectType == 0)
				{
					itemsub.NavigateUrl = string.Concat(new object[]
					{
						"~/Site/Pages/Category.aspx?id=",
						obj.Id,
						"&name=",
						obj.Name.ToLanguage(Languages.Vietnamese)
					});
				}
				else
				{
					if (obj.ObjectType == 1 && obj.NavigateURL == null)
					{
						itemsub.NavigateUrl = string.Concat(new object[]
						{
							"~/Site/Pages/Content.aspx?id=",
							obj.Id,
							"&Page=",
							obj.Name.ToLanguage(Languages.Vietnamese)
						});
					}
					else
					{
						if (obj.NavigateURL == null && obj.ObjectType == 2)
						{
							itemsub.NavigateUrl = string.Concat(new object[]
							{
								"~/Site/Pages/ListContent.aspx?id=",
								obj.Id,
								"&Page=",
								obj.Name.ToLanguage(Languages.Vietnamese)
							});
						}
						else
						{
							if (obj.NavigateURL == null && obj.ObjectType == 3)
							{
								itemsub.NavigateUrl = string.Concat(new object[]
								{
									"~/Site/Pages/MultiPage.aspx?id=",
									obj.Id,
									"&Page=",
									obj.Name.ToLanguage(Languages.Vietnamese)
								});
							}
							else
							{
								itemsub.NavigateUrl = obj.NavigateURL;
							}
						}
					}
				}
				if (obj.NavigateURL != null)
				{
					itemsub.NavigateUrl = obj.NavigateURL;
				}
				itemsub.ObjectType = obj.ObjectType;
				if (obj.Parent.Count > 0)
				{
					itemsub.ListSitemap = ContextManager.BuildChild(obj.Parent);
				}
				if ((from p in obj.ProductDetails where p.Status == 0 select p).ToList<ProductDetail>().Count > 0)
				    {
					System.Collections.Generic.IList<SitemapDTO> listsub2 = new System.Collections.Generic.List<SitemapDTO>();
                    foreach (ProductDetail itempro in (from p in obj.ProductDetails where p.Status == 0 select p into q orderby q.CreatedDate descending select q).ToList<ProductDetail>())
				        {
                            SitemapDTO itemsub2 = new SitemapDTO();
                            itemsub2.Id = itempro.Id;
                            itemsub2.Name = itempro.Name;
                            itemsub2.CreatedDate = itempro.CreatedDate;
                            itemsub2.NavigateUrl = "~/Site/Pages/ProductDetail.aspx?id=" + itempro.Id;
                            if (itempro.Timeexpiration.HasValue)
                            {
                                itemsub2.CreatedDate = itempro.Timeexpiration.Value;
                            }
                            listsub2.Add(itemsub2);
				        }
				    itemsub.ListSitemap = listsub2;
				    }
				if ((from p in obj.NewsDetails 	where p.Status == 0 select p).ToList<NewsDetail>().Count > 0)
				{
					System.Collections.Generic.IList<SitemapDTO> listsub3 = new System.Collections.Generic.List<SitemapDTO>();
					foreach (NewsDetail itemnews in (from p in obj.NewsDetails where p.Status == 0 	select p into q orderby q.CreatedDate descending select q).ToList<NewsDetail>())
					{
						SitemapDTO itemsub2 = new SitemapDTO();
						itemsub2.Id = itemnews.Id;
						itemsub2.Name = itemnews.Title;
						itemsub2.CreatedDate = itemnews.CreatedDate;
						itemsub2.NavigateUrl = "~/Site/Pages/Post.aspx?id=" + itemnews.Id.ToString() + "&Page=" + itemnews.Title.ToLanguage(Languages.Vietnamese);
						if (itemnews.Timeexpiration.HasValue && itemnews.Timeexpiration.Value > itemnews.CreatedDate)
						{
							itemsub2.CreatedDate = itemnews.Timeexpiration.Value;
						}
						listsub3.Add(itemsub2);
					}
					itemsub.ListSitemap = listsub3;
				}
				listsub.Add(itemsub);
			}
			return listsub;
		}
	}
}
