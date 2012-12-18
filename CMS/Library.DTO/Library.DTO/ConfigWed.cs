using ClassLibary.Objects;
using System;
namespace Library.DTO
{
	[Serializable]
	public class ConfigWed
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
		public virtual LanguageContent Content
		{
			get;
			set;
		}
		public virtual int ObjectType
		{
			get;
			set;
		}
		public virtual int Status
		{
			get;
			set;
		}
		public virtual DateTime CreatedDate
		{
			get;
			set;
		}
	}
}
