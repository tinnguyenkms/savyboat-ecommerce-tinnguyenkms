using Library.Presentation;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
namespace Library.Utility
{
	public class FunctionUtility
	{
		public static IList<string> BindListCountry()
		{
			IList<string> listcountry = new List<string>();
			CultureInfo[] cultures = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
			for (int i = 0; i < cultures.Length; i++)
			{
				CultureInfo info = cultures[i];
				RegionInfo item = new RegionInfo(info.LCID);
				if (!listcountry.Contains(item.EnglishName))
				{
					listcountry.Add(item.EnglishName);
					listcountry = (
						from p in listcountry
						orderby p
						select p).ToList<string>();
				}
			}
			return listcountry;
		}
		public static string TrimDescription(string description, int SizeChar)
		{
			string result;
			if (!string.IsNullOrEmpty(description) && description.Length > SizeChar)
			{
				result = description.Substring(0, SizeChar) + "...<br />";
			}
			else
			{
				result = description;
			}
			return result;
		}
		public static string DisbleHyperlink(string description)
		{
			if (!string.IsNullOrEmpty(description))
			{
				if (!WebSercurity.IsLogged())
				{
					description = description.Replace("href=", "href=#");
				}
			}
			return description;
		}
	}
}
