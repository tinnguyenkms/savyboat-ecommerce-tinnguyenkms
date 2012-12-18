using Library.DTO;
using System;
using System.Linq;
namespace Library.DAL
{
	public class MenuDetailDAL : BaseDB<MenuDetail, System.Guid>
	{
		public MenuDetail GetByCode(string code)
		{
			MenuDetail item = new MenuDetail();
			return base.GetByProperty("Code", code).First<MenuDetail>();
		}
	}
}
