using Library.DAL;
using Library.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
namespace Library.BLL
{
	public class DogseManager
	{
		private static DogseDAL dal = new DogseDAL();
		public System.Collections.Generic.IList<Dogse> Getall()
		{
			System.Collections.Generic.IList<Dogse> list = new System.Collections.Generic.List<Dogse>();
			return DogseManager.dal.GetAll();
		}
		public Dogse Tryvalue(string ind, string Aeration_tank, int Objecttype)
		{
			System.Collections.Generic.IList<Dogse> listitem = new System.Collections.Generic.List<Dogse>();
			Dogse item = new Dogse();
			listitem = (
				from p in this.Getall()
				where p.Object_type == Objecttype
				select p).ToList<Dogse>();
			return (
				from p in listitem
				where p.Influent == ind && p.Aeration_tank == Aeration_tank
				select p).First<Dogse>();
		}
	}
}
