using Library.DAL;
using Library.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
namespace Library.BLL
{
	public class EmailUserManager
	{
		private static EmailUserDAL dal = new EmailUserDAL();
		public EmailUser Add(EmailUser item)
		{
			return EmailUserManager.dal.Add(item);
		}
		public System.Collections.Generic.IList<EmailUser> AddList(System.Collections.Generic.IList<EmailUser> listitem)
		{
			return EmailUserManager.dal.AddList(listitem);
		}
		public System.Collections.Generic.IList<EmailUser> UpdateList(System.Collections.Generic.IList<EmailUser> listiem)
		{
			return EmailUserManager.dal.UpdateList(listiem);
		}
		public EmailUser Update(EmailUser item)
		{
			return EmailUserManager.dal.Update(item);
		}
		public EmailUser GetById(System.Guid emailuserid)
		{
			return EmailUserManager.dal.GetById(emailuserid);
		}
		public System.Collections.Generic.IList<EmailUser> GetList()
		{
			System.Collections.Generic.IList<EmailUser> listuser = new System.Collections.Generic.List<EmailUser>();
			return (
				from p in EmailUserManager.dal.GetAll()
				where p.Status != 1
				select p).ToList<EmailUser>();
		}
	}
}
