using ClassLibary.Objects;
using System;
using System.Collections.Generic;
namespace Library.DTO
{
	[Serializable]
	public class NewsDetail
	{
		public virtual Guid Id
		{
			get;
			set;
		}
		public virtual LanguageContent Title
		{
			get;
			set;
		}
		public virtual LanguageContent Contents
		{
			get;
			set;
		}
		public virtual string ImageAvatar
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
		public virtual News New
		{
			get;
			set;
		}
		public virtual int GroupId
		{
			get;
			set;
		}
		public virtual MenuDetail MenuDetails
		{
			get;
			set;
		}
		public virtual IList<NewsDetail> NewsDetails
		{
			get;
			set;
		}
		public virtual string Tag
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
