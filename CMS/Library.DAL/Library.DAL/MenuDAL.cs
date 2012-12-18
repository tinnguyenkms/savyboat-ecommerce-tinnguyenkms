using Library.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
namespace Library.DAL
{
	public class MenuDAL : BaseDB<Menu, System.Guid>
	{
		public new System.Collections.Generic.IList<Menu> GetList()
		{
			System.Collections.Generic.IList<Menu> list = new System.Collections.Generic.List<Menu>();
			return (
				from p in base.GetAll()
				where p.is_deleted == 0
				select p).ToList<Menu>();
		}
	}
}
