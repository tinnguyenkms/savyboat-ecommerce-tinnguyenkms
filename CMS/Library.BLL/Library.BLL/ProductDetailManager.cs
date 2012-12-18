using Library.DAL;
using Library.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
namespace Library.BLL
{
	public class ProductDetailManager
	{
		private static ProductDetailDAL dll = new ProductDetailDAL();
		public ProductDetail GETBYID(System.Guid id)
		{
			return ProductDetailManager.dll.GetById(id);
		}
		public System.Collections.Generic.IList<ProductDetail> GETALL()
		{
			return ProductDetailManager.dll.GetAll();
		}
		public ProductDetail ADD(ProductDetail item)
		{
			item.CreatedDate = System.DateTime.Now;
			return ProductDetailManager.dll.Add(item);
		}
		public ProductDetail UPDATE(ProductDetail item)
		{
			item.UpdatedDate = new System.DateTime?(System.DateTime.Now);
			return ProductDetailManager.dll.Update(item);
		}
		public ProductDetail GetbyMenuDetailID(System.Guid id)
		{
			ProductDetail item = new ProductDetail();
			try
			{
				item = ProductDetailManager.dll.GetAll().FirstOrDefault((ProductDetail p) => p.MenuDetails.Id == id);
			}
			catch (System.Exception ex)
			{
                throw new Exception(ex.Message);
			}
			return item;
		}
		public void DELETE(System.Guid id)
		{
			ProductDetailManager.dll.Delete(id);
		}
		public bool CheckProductName(string Name)
		{
			bool flag = false;
			System.Collections.Generic.IList<string> Liststring = new System.Collections.Generic.List<string>();
			Liststring = (
				from p in this.GETALL()
				select p.Name.ToString()).ToList<string>();
			foreach (string item in Liststring)
			{
				if (item == Name)
				{
					flag = true;
					break;
				}
			}
			return flag;
		}
	}
}
