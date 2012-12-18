using Library.DAL;
using Library.DTO;
using System;
using System.Collections.Generic;
namespace Library.BLL
{
	public class NewsManager
	{
		private static NewsDAL dal = new NewsDAL();
		public News ADD(News item)
		{
			return NewsManager.dal.Add(item);
		}
		public News UPDATE(News item)
		{
			return NewsManager.dal.Update(item);
		}
		public System.Collections.Generic.IList<News> GETALL()
		{
			return NewsManager.dal.GetAll();
		}
		public News GETBYIT(System.Guid id)
		{
			return NewsManager.dal.GetById(id);
		}
	}
}
