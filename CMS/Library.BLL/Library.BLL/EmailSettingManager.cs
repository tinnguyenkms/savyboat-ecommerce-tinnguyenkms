using Library.DAL;
using Library.DTO;
using System;
using System.Collections.Generic;
namespace Library.BLL
{
	public class EmailSettingManager
	{
		private static EmailSettingDAL dal = new EmailSettingDAL();
		public EmailSetting Add(EmailSetting item)
		{
			return EmailSettingManager.dal.Add(item);
		}
		public EmailSetting Update(EmailSetting item)
		{
			return EmailSettingManager.dal.Update(item);
		}
		public EmailSetting GetbyId(System.Guid itemid)
		{
			return EmailSettingManager.dal.GetById(itemid);
		}
		public System.Collections.Generic.IList<EmailSetting> GetAll()
		{
			return EmailSettingManager.dal.GetAll();
		}
	}
}
