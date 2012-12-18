using System;
namespace Library.DTO
{
	public class WebLink
	{
		public virtual Guid Id
		{
			get;
			set;
		}
		public virtual string Link
		{
			get;
			set;
		}
		public virtual string Content
		{
			get;
			set;
		}
		public virtual DateTime? CreatedDate
		{
			get;
			set;
		}
		public virtual int Status
		{
			get;
			set;
		}
		public virtual string Title
		{
			get;
			set;
		}
	}
}
