using System;
namespace Library.DTO
{
	[Serializable]
	public class EmailSetting
	{
		public virtual Guid Id
		{
			get;
			set;
		}
		public virtual string HostServer
		{
			get;
			set;
		}
		public virtual int PortServer
		{
			get;
			set;
		}
		public virtual bool EnableSSl
		{
			get;
			set;
		}
		public virtual string DisplayName
		{
			get;
			set;
		}
		public virtual string Email
		{
			get;
			set;
		}
		public virtual string Password
		{
			get;
			set;
		}
	}
}
