using ClassLibary.Objects;
using System;
using System.Collections.Generic;
namespace Library.DTO
{
	[Serializable]
	public class ProductDetail
	{
		public virtual Guid Id
		{
			get;
			set;
		}
		public virtual MenuDetail MenuDetails
		{
			get;
			set;
		}
		public virtual LanguageContent Name
		{
			get;
			set;
		}
		public virtual LanguageContent Content
		{
			get;
			set;
		}
		public virtual string ImageUrl
		{
			get;
			set;
		}
		public virtual int Status
		{
			get;
			set;
		}
		public virtual int Avatar
		{
			get;
			set;
		}
		public virtual double Price
		{
			get;
			set;
		}
		public virtual double? PromtionPrice
		{
			get;
			set;
		}
		public virtual int GroupId
		{
			get;
			set;
		}
		public virtual DateTime CreatedDate
		{
			get;
			set;
		}
		public virtual string Tag
		{
			get;
			set;
		}
		public virtual int? Total
		{
			get;
			set;
		}
		public virtual string Dimensions
		{
			get;
			set;
		}
		public virtual string PackageSize
		{
			get;
			set;
		}
		public virtual string SKU
		{
			get;
			set;
		}
		public virtual double? Weight
		{
			get;
			set;
		}
		public virtual IList<ImageLibrary> Imagelibrary
		{
			get;
			set;
		}
		public virtual DateTime? Avilablein
		{
			get;
			set;
		}
		public virtual DateTime? UpdatedDate
		{
			get;
			set;
		}
        public virtual DateTime? Timeexpiration
        {
            get;
            set;
        }
	}
}
