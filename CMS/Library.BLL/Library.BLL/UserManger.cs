using Library.DAL;
using Library.DTO;
using Library.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
namespace Library.BLL
{
	public class UserManger
	{
		private static readonly UserDAL dal = new UserDAL();
		public User Add(User user)
		{
			return UserManger.dal.Add(user);
		}
		public System.Collections.Generic.IList<User> AddList(System.Collections.Generic.IList<User> users)
		{
			return UserManger.dal.AddList(users);
		}
		public User Update(User user)
		{
			return UserManger.dal.Update(user);
		}
		public System.Collections.Generic.IList<User> Update(System.Collections.Generic.IList<User> users)
		{
			return UserManger.dal.UpdateList(users);
		}
		public void Delete(User user)
		{
			UserManger.dal.Delete(user);
		}
		public void DeleteList(System.Collections.Generic.IList<System.Guid> ids)
		{
			UserManger.dal.Delete(ids);
		}
		public System.Collections.Generic.IList<User> GetList()
		{
			return UserManger.dal.GetAll();
		}
		public User GetById(System.Guid id)
		{
			return UserManger.dal.GetById(id);
		}
		public bool CheckEmail(string email)
		{
			bool flag = false;
			System.Collections.Generic.IList<string> listuser = new System.Collections.Generic.List<string>();
			listuser = (
				from p in UserManger.dal.GetAll()
				select p.Email).ToList<string>();
			foreach (string item in listuser)
			{
				if (item == email)
				{
					flag = true;
					break;
				}
			}
			return flag;
		}
		public bool CheckUserName(string username)
		{
			bool flag = false;
			System.Collections.Generic.IList<string> listuser = new System.Collections.Generic.List<string>();
			listuser = (
				from p in UserManger.dal.GetAll()
				select p.Name).ToList<string>();
			foreach (string item in listuser)
			{
				if (item == username)
				{
					flag = true;
					break;
				}
			}
			return flag;
		}
		public User GetbyName(string Name)
		{
			return UserManger.dal.GetByName(Name);
		}
		public User ValidateUser(string username, string password, int groupid)
		{
			string encryptPassword = Library.Utility.Utility.CreateMD5Hash(password);
			System.Collections.Generic.IList<User> userList = new System.Collections.Generic.List<User>();
			User currentUser = this.SingleSignOn(username, password, encryptPassword);
			userList.Add(currentUser);
			if (currentUser.Group == groupid)
			{
				bool isValid = false;
				foreach (User u in userList)
				{
					if (string.Compare(u.Name, username, true) == 0)
					{
						if (!string.IsNullOrEmpty(u.Password))
						{
							if (string.Compare(u.Password, encryptPassword) == 0)
							{
								isValid = true;
							}
						}
						else
						{
							if (string.Compare(u.DefaultPassword, password) == 0)
							{
								isValid = true;
							}
						}
						if (isValid)
						{
							currentUser = u;
						}
						break;
					}
				}
			}
			return currentUser;
		}
		public User SingleSignOn(string username, string password, string encryptPassword)
		{
			System.Collections.Generic.IList<User> validUsers = new System.Collections.Generic.List<User>();
			System.Collections.Generic.IList<User> userList = (
				from p in UserManger.dal.GetAll()
				where p.Name == username
				select p).ToList<User>();
			foreach (User u in userList)
			{
				if (u.Name != null)
				{
					if (string.Compare(u.Name.Trim(), username, true) == 0)
					{
						bool isValid = false;
						if (!string.IsNullOrEmpty(u.Password))
						{
							if (string.Compare(u.Password, encryptPassword) == 0)
							{
								isValid = true;
							}
						}
						else
						{
							if (string.Compare(u.DefaultPassword, password) == 0)
							{
								isValid = true;
							}
						}
						if (isValid)
						{
							validUsers.Add(u);
							break;
						}
					}
				}
			}
			User result;
			if (validUsers.Count == 1)
			{
				result = validUsers.First<User>();
			}
			else
			{
				result = null;
			}
			return result;
		}
		public void ChangeMyPassword(System.Guid userId, string oldPassword, string newPassword, string confirmPassword)
		{			
			if (newPassword != confirmPassword)
			{
				throw new System.Exception();
			}
			User user = UserManger.dal.GetById(userId);
			string oldPwdEncrypted = user.Password;
            string newPwdEncrypted = Library.Utility.Utility.CreateMD5Hash(oldPassword);
			if (string.IsNullOrEmpty(user.Password))
			{
				oldPwdEncrypted = user.DefaultPassword;
				newPwdEncrypted = oldPassword;
			}
			if (oldPwdEncrypted != newPwdEncrypted)
			{
				throw new System.Exception();
			}
            user.Password = Library.Utility.Utility.CreateMD5Hash(newPassword);
			user = UserManger.dal.Update(user);
		}
	}
}
