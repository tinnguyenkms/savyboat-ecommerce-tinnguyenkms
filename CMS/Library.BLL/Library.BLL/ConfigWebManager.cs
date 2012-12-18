using Library.DAL;
using Library.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
namespace Library.BLL
{
	public class ConfigWebManager
	{
		private static ConfigWedDAL configweb = new ConfigWedDAL();
		public ConfigWed Add(ConfigWed item)
		{
			item.CreatedDate = System.DateTime.Now;
			return ConfigWebManager.configweb.Add(item);
		}
        public IList<ConfigWed> AddList(IList<ConfigWed> listitem)
        {
            return configweb.AddList(listitem);
        }
        public IList<ConfigWed> UpdateList(IList<ConfigWed> listitem)
        {           
            return configweb.UpdateList(listitem);
        }
		public ConfigWed Update(ConfigWed item)
		{
			item.CreatedDate = System.DateTime.Now;
			return ConfigWebManager.configweb.Update(item);
		}
		public void Delete(ConfigWed item)
		{
			item.Status = 1;
			this.Update(item);
		}
		public System.Collections.Generic.IList<ConfigWed> GetListByObjectType(int ObjectType)
		{
			System.Collections.Generic.IList<ConfigWed> list = new System.Collections.Generic.List<ConfigWed>();
			list = (
				from p in ConfigWebManager.configweb.GetAll()
				where p.Status == 0
				select p).ToList<ConfigWed>();
			if (list != null)
			{
				list = (
					from p in list
					where p.ObjectType == ObjectType
					select p).ToList<ConfigWed>();
			}
			return list;
		}
        public System.Collections.Generic.IList<ConfigWed> GetList()
        {
            System.Collections.Generic.IList<ConfigWed> list = new System.Collections.Generic.List<ConfigWed>();
            list = new ConfigWedDAL().GetAll();
            if (list != null)
                list = list.Where(p => p.Status == 0).ToList();
            return list;
        }
		public ConfigWed GetById(System.Guid Id)
		{
			return ConfigWebManager.configweb.GetById(Id);
		}
	}
}
