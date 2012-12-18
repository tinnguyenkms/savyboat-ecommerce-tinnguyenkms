using Library.DAL;
using Library.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
namespace Library.BLL
{
	public class WebLinkManager
	{
		private static WebLinkDAL dal = new WebLinkDAL();
		public WebLink ADD(WebLink item)
		{
			return WebLinkManager.dal.Add(item);
		}
		public WebLink UPDATE(WebLink item)
		{
			return WebLinkManager.dal.Update(item);
		}
		public void DELETE(System.Guid ids)
		{
			WebLink item = this.GETBYID(ids);
			item.Status = 1;
			this.UPDATE(item);
		}
		public WebLink GETBYID(System.Guid ids)
		{
			return WebLinkManager.dal.GetById(ids);
		}
		public System.Collections.Generic.IList<WebLink> GETALL()
		{
			return WebLinkManager.dal.GetAll();
		}
		public System.Collections.Generic.IList<WebLink> GETALLVIEW()
		{
			return (
				from p in WebLinkManager.dal.GetAll()
				where p.Status == 0
				select p).ToList<WebLink>();
		}
	}
}
