using Library.BLL;
using Library.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
namespace Library.Presentation
{
	public class WebUser
	{
		private static UserManger userMan = new UserManger();
		private System.Guid userId;
		private string name;
		private string password;
		private string email;
		private int groupId;
		private System.DateTime dateCreated;
		private System.DateTime dateLogged;
		private bool isVisible;
		public System.Guid UserId
		{
			get
			{
				return this.userId;
			}
		}
		public string Name
		{
			get
			{
				return this.name;
			}
			set
			{
				this.name = value;
			}
		}
		public string Email
		{
			get
			{
				return this.email;
			}
			set
			{
				this.email = value;
			}
		}
		public int Group
		{
			get
			{
				return this.groupId;
			}
			set
			{
				this.groupId = value;
			}
		}
		public System.DateTime DateCreated
		{
			get
			{
				return this.dateCreated;
			}
			set
			{
				this.dateCreated = value;
			}
		}
		public System.DateTime DateLogged
		{
			get
			{
				return this.dateLogged;
			}
			set
			{
				this.dateLogged = value;
			}
		}
		public bool IsVisible
		{
			get
			{
				return this.isVisible;
			}
			set
			{
				this.isVisible = value;
			}
		}
		public static System.Collections.Generic.List<WebUser> Users()
		{
			System.Collections.Generic.List<User> ssusers = WebUser.userMan.GetList().ToList<User>();
			System.Collections.Generic.List<WebUser> users = new System.Collections.Generic.List<WebUser>();
			return WebUser.ConvertToListUser(ssusers);
		}
		public static bool IsExist(string name, string email)
		{
			User user = (
				from u in WebUser.userMan.GetList()
				where u.Name == name || u.Email == email
				select u).SingleOrDefault<User>();
			return user != null && user.Id != System.Guid.Empty;
		}
		public static WebUser GetUser(string name)
		{
			User user = WebUser.userMan.GetbyName(name);
			return WebUser.ConvertToUser(user);
		}
		public static WebUser GetUser(System.Guid id)
		{
			WebUser wuser = new WebUser();
			if (id != System.Guid.Empty)
			{
				User user = WebUser.userMan.GetById(id);
				wuser = WebUser.ConvertToUser(user);
			}
			return wuser;
		}
		public static bool Update(WebUser user)
		{
			bool result;
			try
			{
				User ssuser = WebUser.ConvertToNewUser(user);
				WebUser.userMan.Update(ssuser);
				result = true;
				return result;
			}
			catch
			{
			}
			result = false;
			return result;
		}
		public static bool Insert(WebUser user)
		{
			bool result;
			try
			{
				User ssuser = WebUser.ConvertToNewUser(user);
				WebUser.userMan.Add(ssuser);
				result = true;
				return result;
			}
			catch
			{
			}
			result = false;
			return result;
		}
		public string GetPassword()
		{
			return this.password;
		}
		public void SetPassword(string value)
		{
			this.password = value;
		}
		private static WebUser ConvertToUser(User ssu)
		{
			WebUser u = new WebUser();
			if (ssu != null && ssu.Id != System.Guid.Empty)
			{
				u.userId = ssu.Id;
				u.Name = ssu.Name;
				u.password = ssu.Password;
				u.email = ssu.Email;
				u.Group = ssu.Group;
				u.IsVisible = ssu.IsVisible;
				u.DateCreated = ssu.DateCreated;
			}
			return u;
		}
		private static System.Collections.Generic.List<WebUser> ConvertToListUser(System.Collections.Generic.List<User> list)
		{
			System.Collections.Generic.List<WebUser> userList = new System.Collections.Generic.List<WebUser>();
			foreach (User user in list)
			{
				WebUser u = new WebUser();
				u = WebUser.ConvertToUser(user);
				userList.Add(u);
			}
			return userList;
		}
		private static User ConvertToNewUser(WebUser user)
		{
			User ssuser = new User();
			User result;
			if (user == null)
			{
				result = ssuser;
			}
			else
			{
				try
				{
					if (user.userId != System.Guid.Empty)
					{
						ssuser = WebUser.userMan.GetById(user.userId);
					}
					ssuser.Name = user.Name;
					ssuser.Password = user.GetPassword();
					ssuser.Email = user.Email;
					ssuser.Group = user.Group;
					ssuser.IsVisible = user.IsVisible;
					ssuser.DateCreated = user.DateCreated;
					ssuser.DateLogged = new System.DateTime?(user.DateLogged);
				}
				catch
				{
				}
				result = ssuser;
			}
			return result;
		}
	}
}
