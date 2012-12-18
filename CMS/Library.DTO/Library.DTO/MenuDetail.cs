using ClassLibary.Objects;
using System;
using System.Collections.Generic;
namespace Library.DTO
{
	[Serializable]
	public class MenuDetail
	{
		public virtual Guid Id
		{
			get;
			set;
		}
		public virtual Menu Menu
		{
			get;
			set;
		}
		public virtual IList<ProductDetail> ProductDetails
		{
			get;
			set;
		}
		public virtual LanguageContent Name
		{
			get;
			set;
		}
		public virtual int MenuOrder
		{
			get;
			set;
		}
		public virtual string NavigateURL
		{
			get;
			set;
		}
		public virtual int ObjectType
		{
			get;
			set;
		}
		public virtual string ImageUrl
		{
			get;
			set;
		}
		public virtual IList<MenuDetail> Parent
		{
			get;
			set;
		}
		public virtual IList<NewsDetail> NewsDetails
		{
			get;
			set;
		}
		public virtual bool MenuType
		{
			get;
			set;
		}
		public virtual string Code
		{
			get;
			set;
		}
		public virtual bool UnClick
		{
			get;
			set;
		}
	}
}
