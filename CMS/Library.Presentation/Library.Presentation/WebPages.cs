using Library.BLL;
using System;
namespace Library.Presentation
{
	public class WebPages
	{
		private static ProductDetailManager bll = new ProductDetailManager();
		public virtual string Content
		{
			get;
			set;
		}
		public virtual System.Guid Id
		{
			get;
			set;
		}
	}
}
