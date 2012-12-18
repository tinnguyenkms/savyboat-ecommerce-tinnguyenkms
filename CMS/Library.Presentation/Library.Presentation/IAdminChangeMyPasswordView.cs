using System;
namespace Library.Presentation
{
	public interface IAdminChangeMyPasswordView
	{
		System.Guid UserId
		{
			get;
			set;
		}
		string OldPassword
		{
			get;
		}
		string NewPassword
		{
			get;
		}
		string ConfirmPassword
		{
			get;
		}
	}
}
