using ClassLibary.Objects;
using System;
using System.Collections.Generic;
namespace Library.DTO.BE
{
	public class SitemapDTO
	{
		public Guid Id
		{
			get;
			set;
		}
		public LanguageContent Name
		{
			get;
			set;
		}
		public string NavigateUrl
		{
			get;
			set;
		}
		public int ObjectType
		{
			get;
			set;
		}
		public IList<SitemapDTO> ListSitemap
		{
			get;
			set;
		}
		public DateTime CreatedDate
		{
			get;
			set;
		}  
	}
}
