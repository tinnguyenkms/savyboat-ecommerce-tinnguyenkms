using Library.BLL;
using Library.DTO;
using System;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
namespace Library.Presentation
{
	public class WebSercurity
	{
		private static UserManger userMan = new UserManger();
		public static bool CheckUserLogIn(string name, string password)
		{
			WebUser user = WebUser.GetUser(name);
			return user != null && user.Name != "" && user.GetPassword() == WebSercurity.CreateMD5Hash(password) && user.IsVisible;
		}
		public static bool IsLogged()
		{
			HttpContext context = HttpContext.Current;
			string username = context.Session["Library.username"] as string;
			return !string.IsNullOrEmpty(username);
		}
		public static void LogIn(string name, string password)
		{
			HttpContext context = HttpContext.Current;
			User user = WebSercurity.GetUserInfo(name, WebSercurity.CreateMD5Hash(password));
			if (user != null && user.Id != System.Guid.Empty)
			{
				context.Session.Timeout = 100800;
				context.Session["Library.username"] = user.Name;
				context.Session["Library.userid"] = user.Id.ToString();
				context.Session["Library.groupid"] = user.Group.ToString();
			}
		}
		public static void LogOff()
		{
			HttpContext context = HttpContext.Current;
			context.Session["Library.username"] = "";
			context.Session["Library.userid"] = "";
			context.Session["Library.groupid"] = "";
		}
		public static string CreateMD5Hash(string input)
		{
			System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create();
			byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
			byte[] hashBytes = md5.ComputeHash(inputBytes);
			System.Text.StringBuilder sb = new System.Text.StringBuilder();
			for (int i = 0; i < hashBytes.Length; i++)
			{
				sb.Append(hashBytes[i].ToString("X2"));
			}
			return sb.ToString();
		}
		public static string GetNameCurrentUser()
		{
			HttpContext context = HttpContext.Current;
			return context.Session["Library.username"] as string;
		}
		public static System.Guid GetIdCurrentUser()
		{
			HttpContext context = HttpContext.Current;
			string userid = context.Session["Library.userid"] as string;
			System.Guid result;
			if (!string.IsNullOrEmpty(userid))
			{
				result = new System.Guid(userid);
			}
			else
			{
				result = System.Guid.Empty;
			}
			return result;
		}
		public static int GetGroupIdCurrentUser()
		{
			HttpContext context = HttpContext.Current;
			string groupid = context.Session["Library.groupid"] as string;
			int result;
			if (!string.IsNullOrEmpty(groupid))
			{
				result = int.Parse(groupid);
			}
			else
			{
				result = 0;
			}
			return result;
		}
		private static User GetUserInfo(string name, string password)
		{
			return (
				from u in WebSercurity.userMan.GetList()
				where u.Name == name && u.Password == password
				select u).SingleOrDefault<User>();
		}
	}
}
