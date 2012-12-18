using Library.DAL;
using Library.DTO;
using System;
namespace Library.BLL
{
	public class MenuManager
	{
		private static MenuDAL dal = new MenuDAL();
		public Menu ADD(Menu item)
		{
			return MenuManager.dal.Add(item);
		}
		public Menu UPDATE(Menu item)
		{
			return MenuManager.dal.Update(item);
		}
		public Menu GETBYID(System.Guid itemid)
		{
			return MenuManager.dal.GetById(itemid);
		}
		public void DELETE(System.Guid itemid)
		{
			MenuManager.dal.Delete(itemid);
		}
	}
}
