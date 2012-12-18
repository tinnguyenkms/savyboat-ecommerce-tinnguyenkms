using Library.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
namespace Library.DAL
{
	public class UserDAL : BaseDB<User, System.Guid>
	{
		public User GetByName(string name)
		{
			System.Collections.Generic.IList<User> users = base.GetAll();
			User user = new User();
			if (users != null)
			{
				user = (
					from u in users
					where u.Name == name
					select u).SingleOrDefault<User>();
			}
			return user;
		}
	}
}
