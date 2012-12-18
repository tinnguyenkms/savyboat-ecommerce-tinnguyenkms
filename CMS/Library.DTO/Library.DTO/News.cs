using System;
using System.Collections.Generic;
namespace Library.DTO
{
	[Serializable]
	public class News
	{
		public virtual Guid Id
		{
			get;
			set;
		}
		public virtual IList<NewsDetail> NewsDetails
		{
			get;
			set;
		}
		public virtual string Name
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
	}
}
