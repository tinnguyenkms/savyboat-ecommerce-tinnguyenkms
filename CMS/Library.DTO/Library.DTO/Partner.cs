using ClassLibary.Objects;
using System;
namespace Library.DTO
{
	[Serializable]
	public class Partner
	{
		public virtual Guid Id
		{
			get;
			set;
		}
		public virtual LanguageContent CompanyName
		{
			get;
			set;
		}
		public virtual string ImageUrl
		{
			get;
			set;
		}
		public virtual int Status
		{
			get;
			set;
		}
		public virtual DateTime CreatedDate
		{
			get;
			set;
		}
		public virtual string HttpLink
		{
			get;
			set;
		}
	}
}
