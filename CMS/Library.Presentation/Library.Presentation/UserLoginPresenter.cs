using Library.BLL;
using Library.DTO;
using System;
using System.Web;
using System.Web.Security;
namespace Library.Presentation
{
	public class UserLoginPresenter
	{
		public static UserManger usermg = new UserManger();
		private IUserLoginView userLoginView;
		public UserLoginPresenter()
		{
		}
		public UserLoginPresenter(IUserLoginView userLoginView)
		{
			if (userLoginView == null)
			{
				throw new System.ArgumentNullException("View may not be null.");
			}
			this.userLoginView = userLoginView;
		}
		public void Dispatch()
		{
			this.Dispatch(this.userLoginView.Username);
		}
		private void Dispatch(string userName)
		{
			HttpContext.Current.Response.Redirect("~/Management/");
		}
		public void Authenticate()
		{
			int group = this.userLoginView.GroupType;
			User currentUser = UserLoginPresenter.usermg.ValidateUser(this.userLoginView.Username, this.userLoginView.Password, group);
			if (currentUser != null)
			{
				FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, currentUser.Id.ToString(), System.DateTime.Now, System.DateTime.Now.AddHours(8.0), true, FormsAuthentication.FormsCookiePath);
				string hash = FormsAuthentication.Encrypt(ticket);
				HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hash);
				if (ticket.IsPersistent)
				{
					cookie.Expires = System.DateTime.Now.AddYears(30);
				}
				HttpContext.Current.Response.Cookies.Add(cookie);
				this.Dispatch(this.userLoginView.Username);
			}
		}
	}
}
