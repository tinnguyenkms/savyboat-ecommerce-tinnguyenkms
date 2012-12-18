using System;
namespace Library.Presentation
{
	public interface IUserLoginView
	{
		string Username
		{
			get;
		}
		string Password
		{
			get;
		}
		int GroupType
		{
			get;
		}
	}
}
