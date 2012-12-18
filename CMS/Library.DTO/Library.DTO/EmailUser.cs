using System;
namespace Library.DTO
{
	public class EmailUser
	{
		public virtual Guid Id
		{
			get;
			set;
		}
		public virtual string DisPlayName
		{
			get;
			set;
		}
		public virtual string Email
		{
			get;
			set;
		}
		public virtual string Description
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
