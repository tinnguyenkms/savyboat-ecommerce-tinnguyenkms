using Library.DAL;
using Library.DTO;
using System;
using System.Collections.Generic;
namespace Library.BLL
{
	public class NewsDetailManager
	{
		private static NewsDetailDAL dal = new NewsDetailDAL();
		public NewsDetail ADD(NewsDetail item)
		{
			return NewsDetailManager.dal.Add(item);
		}
		public NewsDetail UPDATE(NewsDetail item)
		{
			return NewsDetailManager.dal.Update(item);
		}
		public System.Collections.Generic.IList<NewsDetail> GETALL()
		{
			return NewsDetailManager.dal.GetAll();
		}
		public NewsDetail GETBYIT(System.Guid id)
		{
			return NewsDetailManager.dal.GetById(id);
		}
	}
}
