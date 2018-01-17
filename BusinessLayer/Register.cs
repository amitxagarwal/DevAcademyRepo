using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLayer;
using System.Net;
using SendGrid;
using SendGrid.Helpers.Mail;
using System.Net.Mail;
using System.Net.Mime;

namespace BusinessLayer
{
    public class Register
    {
        public bool RegisterEmployee(string name, string emailid)
        {
            AddEnrollmentToDB adb = new AddEnrollmentToDB();
            return adb.AddDatatoDB(name, emailid);
        }

        public void RegisterationEmail(string name, string emailid)
        {
            var mailMsg = new MailMessage();
            mailMsg.From = new MailAddress("DevAcademy@microsoft.com", "Developer Academy- App Service");
            mailMsg.To.Add(new MailAddress(emailid,name));
            mailMsg.Subject = "Developer Academy- App Service Registration";

            string text = "Hello " + name + ", Your \"Developer Academy- Azure App\" registration is successfull.";
            string html = "<p>Hello " + name + ", Your \"Developer Academy-Azure App\" registration is successfull.</p>";
            mailMsg.AlternateViews.Add(AlternateView.CreateAlternateViewFromString(text, null, MediaTypeNames.Text.Plain));
            mailMsg.AlternateViews.Add(AlternateView.CreateAlternateViewFromString(html, null, MediaTypeNames.Text.Html));
            
            mailMsg.CC.Add("anilpras@microsoft.com,amagar@microsoft.com,shivsharma@microsoft.com,bsur@microsoft.com");
            

            SmtpClient smtpClient = new SmtpClient("smtp.sendgrid.net", Convert.ToInt32(587));
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("azure_c285f5ad0bf40b8859b23806b2d17ddd@azure.com", "a1s2d3f4g5");
            smtpClient.Credentials = credentials;
            smtpClient.Send(mailMsg);           

        }
    }
}
