using Library.BLL;
using Library.DTO;
using System;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
namespace Library.Utility
{
	public class Utility
	{
		public static string CreateMD5Hash(string input)
		{
			MD5 md5 = MD5.Create();
			byte[] inputBytes = Encoding.ASCII.GetBytes(input);
			byte[] hashBytes = md5.ComputeHash(inputBytes);
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < hashBytes.Length; i++)
			{
				sb.Append(hashBytes[i].ToString("X2"));
			}
			return sb.ToString();
		}
		public static void SendMail(string address, string Subject, string Content, string Attachfile)
		{
			EmailSetting emailsetting = ContextManager.GetEmailInfo();
			SmtpClient SmtpServer = new SmtpClient();
			SmtpServer.Credentials = new NetworkCredential(emailsetting.Email, emailsetting.Password);
			SmtpServer.Port = emailsetting.PortServer;
			SmtpServer.Host = emailsetting.HostServer;
			SmtpServer.EnableSsl = emailsetting.EnableSSl;
			MailMessage mail = new MailMessage();
			string[] addr = address.Split(new char[]
			{
				','
			});
			try
			{
				mail.From = new MailAddress(emailsetting.Email, emailsetting.DisplayName, Encoding.UTF8);
				byte i = 0;
				while ((int)i < addr.Length)
				{
					mail.To.Add(addr[(int)i]);
					mail.ReplyToList.Add(addr[(int)i]);
					i += 1;
				}
				mail.Subject = Subject;
				mail.BodyEncoding = Encoding.UTF8;
				mail.Body = Content;
				mail.IsBodyHtml = true;
				if (!string.IsNullOrEmpty(Attachfile))
				{
					mail.Attachments.Add(new Attachment(Attachfile));
				}
				mail.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
				SmtpServer.Send(mail);
			}
			catch (SmtpException ex)
			{
				throw ex;
			}
		}
		public static string GetBodyEmail(string path)
		{
			return File.ReadAllText(path);
		}
		public static void WaterMarkPicture(string savepath, string pathwatermarkpicture, string Copyright)
		{
		}
	}
}
