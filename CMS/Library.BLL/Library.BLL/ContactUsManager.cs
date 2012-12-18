using Library.DAL;
using Library.DTO;
using System;
using System.Collections.Generic;
namespace Library.BLL
{
	public class ContactUsManager
	{
		private static ContactUsDAL dal = new ContactUsDAL();
		public ContactUs ADD(ContactUs item)
		{
			return ContactUsManager.dal.Add(item);
		}
		public ContactUs UPDATE(ContactUs item)
		{
			return ContactUsManager.dal.Update(item);
		}
		public System.Collections.Generic.IList<ContactUs> GETALL()
		{
			return ContactUsManager.dal.GetAll();
		}
	}
}
