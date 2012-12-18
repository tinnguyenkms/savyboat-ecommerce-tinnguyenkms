using System;
namespace Library.DTO
{
	[Serializable]
	public class Dogse
	{
		public virtual Guid Id
		{
			get;
			set;
		}
		public virtual string Influent
		{
			get;
			set;
		}
		public virtual string Aeration_tank
		{
			get;
			set;
		}
		public virtual string Days_1_5
		{
			get;
			set;
		}
		public virtual string Weeks_2_6
		{
			get;
			set;
		}
		public virtual string Weeks_7
		{
			get;
			set;
		}
		public virtual int Object_type
		{
			get;
			set;
		}
	}
}
