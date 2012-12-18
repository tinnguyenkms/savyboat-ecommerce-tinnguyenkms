using System;
namespace Library.DTO
{
	[Serializable]
	public class ImageLibrary
	{
		public virtual Guid Id
		{
			get;
			set;
		}
		public virtual string ImageUrl
		{
			get;
			set;
		}
		public virtual ProductDetail Productdetail
		{
			get;
			set;
		}
		public virtual DateTime CreatedDate
		{
			get;
			set;
		}
		public virtual int Status
		{
			get;
			set;
		}
		public virtual string Name
		{
			get;
			set;
		}
		public virtual string Description
		{
			get;
			set;
		}
	}
}
