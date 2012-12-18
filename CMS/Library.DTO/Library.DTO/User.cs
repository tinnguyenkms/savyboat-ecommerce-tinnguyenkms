using System;
namespace Library.DTO
{
	[Serializable]
	public class User
	{
		public virtual string Name
		{
			get;
			set;
		}
		public virtual string Password
		{
			get;
			set;
		}
		public virtual string DefaultPassword
		{
			get;
			set;
		}
		public virtual string Email
		{
			get;
			set;
		}
		public virtual int Group
		{
			get;
			set;
		}
		public virtual DateTime DateCreated
		{
			get;
			set;
		}
		public virtual DateTime? DateLogged
		{
			get;
			set;
		}
		public virtual bool IsVisible
		{
			get;
			set;
		}
		public virtual Guid Id
		{
			get;
			set;
		}
		public virtual string Address1
		{
			get;
			set;
		}
		public virtual string Address2
		{
			get;
			set;
		}
		public virtual string LastName
		{
			get;
			set;
		}
		public virtual string FirstName
		{
			get;
			set;
		}
		public virtual string CityName
		{
			get;
			set;
		}
		public virtual string CountryName
		{
			get;
			set;
		}
		public virtual string ZipCode
		{
			get;
			set;
		}
		public virtual int Status
		{
			get;
			set;
		}
		public virtual string CompanyName
		{
			get;
			set;
		}
		public virtual string BusinessType
		{
			get;
			set;
		}
		public virtual string BusinessField
		{
			get;
			set;
		}
		public virtual string Tel
		{
			get;
			set;
		}
		public virtual string Fax
		{
			get;
			set;
		}
		public virtual string ContactPerson
		{
			get;
			set;
		}
		public virtual string HandPhone
		{
			get;
			set;
		}
		public virtual string Contractor
		{
			get;
			set;
		}
		public virtual string SubContractor
		{
			get;
			set;
		}
		public virtual string PersionalWebsite
		{
			get;
			set;
		}
		public virtual string Content
		{
			get;
			set;
		}
	}
}
