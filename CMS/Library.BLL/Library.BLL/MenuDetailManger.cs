using Library.DAL;
using Library.DTO;
using System;
using System.Collections.Generic;
namespace Library.BLL
{
	public class MenuDetailManger
	{
		private static MenuDetailDAL dal = new MenuDetailDAL();
		public MenuDetail ADD(MenuDetail item)
		{
			return MenuDetailManger.dal.Add(item);
		}
		public MenuDetail UPDATE(MenuDetail item)
		{
			return MenuDetailManger.dal.Update(item);
		}
		public MenuDetail GETBYID(System.Guid itemid)
		{
			return MenuDetailManger.dal.GetById(itemid);
		}
		public System.Collections.Generic.IList<MenuDetail> GETALL()
		{
			return MenuDetailManger.dal.GetAll();
		}
		public MenuDetail GetByCode(string code)
		{
			return MenuDetailManger.dal.GetByCode(code);
		}
	}
}
