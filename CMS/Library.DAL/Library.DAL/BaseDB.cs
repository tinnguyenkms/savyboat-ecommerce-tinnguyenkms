using EducationSystem.ORM;
using NHibernate;
using System;
using System.Collections.Generic;
namespace Library.DAL
{
	public abstract class BaseDB<T, IdT> : NHibernateDB<T, IdT>
	{
		public T Add(T dtoObject)
		{
			dtoObject = base.Save(dtoObject);
			base.CommitChanges();
			return dtoObject;
		}
		public System.Collections.Generic.IList<T> AddList(System.Collections.Generic.IList<T> objectList)
		{
			for (int i = 0; i < objectList.Count; i++)
			{
				T obj = objectList[i];
				obj = base.Save(obj);
			}
			base.CommitChanges();
			return objectList;
		}
		public T Update(T dtoObject)
		{
			dtoObject = base.SaveOrUpdate(dtoObject);
			base.CommitChanges();
			return dtoObject;
		}
		public System.Collections.Generic.IList<T> UpdateList(System.Collections.Generic.IList<T> objectList)
		{
			for (int i = 0; i < objectList.Count; i++)
			{
				T obj = objectList[i];
				obj = base.SaveOrUpdate(obj);
			}
			base.CommitChanges();
			return objectList;
		}
		public new void Delete(IdT objectId)
		{
			try
			{
				base.Delete(objectId);
				base.CommitChanges();
			}
			catch (ObjectNotFoundException ex)
			{
				throw ex;
			}
			catch (System.Exception ex2)
			{
				throw ex2;
			}
		}
		public void Delete(System.Collections.Generic.IList<IdT> objectIds)
		{
			foreach (IdT id in objectIds)
			{
				base.Delete(id);
			}
			base.CommitChanges();
		}
		public T GetById(IdT objectId)
		{
			T byId;
			try
			{
				byId = base.GetById(objectId, true);
			}
			catch (ObjectNotFoundException ex)
			{
				throw ex;
			}
			return byId;
		}
		public System.Collections.Generic.IList<T> GetList()
		{
			return base.GetAll();
		}
	}
}
