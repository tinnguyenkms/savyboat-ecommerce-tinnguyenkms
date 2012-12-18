using ClassLibary.Objects;
using System;
using System.Collections.Generic;
namespace Library.DTO
{
	[Serializable]
	public class Menu
	{
		public virtual Guid Id
		{
			get;
			set;
		}
		public virtual IList<MenuDetail> MenuDetails
		{
			get;
			set;
		}
		public virtual LanguageContent Name
		{
			get;
			set;
		}
		public virtual int is_deleted
		{
			get;
			set;
		}
	}
}
