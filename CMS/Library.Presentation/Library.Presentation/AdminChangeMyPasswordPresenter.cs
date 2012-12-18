using Library.BLL;
using log4net;
using System;
namespace Library.Presentation
{
	public class AdminChangeMyPasswordPresenter
	{
		public static readonly ILog logAbsentReason = LogManager.GetLogger(typeof(AdminChangeMyPasswordPresenter));
		public IAdminChangeMyPasswordView adminChangeMyPasswordView;
		public static UserManger UserManager = new UserManger();
		public AdminChangeMyPasswordPresenter(IAdminChangeMyPasswordView adminChangeMyPasswordView)
		{
			if (adminChangeMyPasswordView == null)
			{
				throw new System.ArgumentNullException("View may not be null");
			}
			this.adminChangeMyPasswordView = adminChangeMyPasswordView;
		}
		public void ChangePassword()
		{
			AdminChangeMyPasswordPresenter.UserManager.ChangeMyPassword(this.adminChangeMyPasswordView.UserId, this.adminChangeMyPasswordView.OldPassword, this.adminChangeMyPasswordView.NewPassword, this.adminChangeMyPasswordView.ConfirmPassword);
		}
	}
}
