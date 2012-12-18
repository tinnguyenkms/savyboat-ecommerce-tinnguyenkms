using Library.DAL;
using Library.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
namespace Library.BLL
{
	public class PartnerManager
	{
		private static PartnerDAL parnerdal = new PartnerDAL();
		public Partner Add(Partner item)
		{
			return PartnerManager.parnerdal.Add(item);
		}
		public Partner Update(Partner item)
		{
			return PartnerManager.parnerdal.Update(item);
		}
		public void Delete(Partner item)
		{
			item.Status = 1;
			this.Update(item);
		}
		public Partner GetById(System.Guid itemId)
		{
			return PartnerManager.parnerdal.GetById(itemId);
		}
		public System.Collections.Generic.IList<Partner> Getlist()
		{
			System.Collections.Generic.IList<Partner> list = new System.Collections.Generic.List<Partner>();
			list = PartnerManager.parnerdal.GetAll();
			if (list != null)
			{
				list = (
					from p in list
					where p.Status == 0
					select p).ToList<Partner>();
			}
			return list;
		}
		public System.Collections.Generic.IList<Partner> Getlist(int Object)
		{
			System.Collections.Generic.IList<Partner> list = new System.Collections.Generic.List<Partner>();
			list = PartnerManager.parnerdal.GetAll();
			if (list != null)
			{
				list = (
					from p in list
					where p.Status == Object
					select p).ToList<Partner>();
			}
			return list;
		}
	}
}
