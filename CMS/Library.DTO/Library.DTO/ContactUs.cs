using System;
namespace Library.DTO
{
	public class ContactUs
	{
		public virtual Guid Id
		{
			get;
			set;
		}
		public virtual string Name
		{
			get;
			set;
		}
		public virtual string Email
		{
			get;
			set;
		}
		public virtual string Telephone
		{
			get;
			set;
		}
		public virtual string Subject
		{
			get;
			set;
		}
		public virtual string Comments
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
	}
}
