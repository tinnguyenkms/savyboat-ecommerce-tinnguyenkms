using Library.DAL;
using Library.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
namespace Library.BLL
{
	public class ImageLibraryManager
	{
		private static ImageLibraryDAL ildal = new ImageLibraryDAL();
		public ImageLibrary Add(ImageLibrary Item)
		{
			Item.CreatedDate = System.DateTime.Now;
			return ImageLibraryManager.ildal.Add(Item);
		}
		public System.Collections.Generic.IList<ImageLibrary> AdddList(System.Collections.Generic.IList<ImageLibrary> listadd)
		{
			return ImageLibraryManager.ildal.AddList(listadd);
		}
		public ImageLibrary Update(ImageLibrary Item)
		{
			return ImageLibraryManager.ildal.Update(Item);
		}
		public void Delete(System.Guid Id)
		{
			ImageLibrary item = this.GetById(Id);
			item.Status = 1;
			this.Update(item);
		}
		public ImageLibrary GetById(System.Guid Id)
		{
			return ImageLibraryManager.ildal.GetById(Id);
		}
		public System.Collections.Generic.IList<ImageLibrary> GetList()
		{
			System.Collections.Generic.IList<ImageLibrary> list = new System.Collections.Generic.List<ImageLibrary>();
			list = ImageLibraryManager.ildal.GetAll();
			if (list.Count > 0)
			{
				list = (
					from p in list
					where p.Status != 1
					select p).ToList<ImageLibrary>();
			}
			return list;
		}
		public System.Collections.Generic.IList<ImageLibrary> GetListByObject(int objecttype)
		{
			System.Collections.Generic.IList<ImageLibrary> list = new System.Collections.Generic.List<ImageLibrary>();
			list = this.GetList();
			if (list != null)
			{
				list = (
					from p in list
					where p.Status == objecttype
					select p).ToList<ImageLibrary>();
			}
			return list;
		}
	}
}
