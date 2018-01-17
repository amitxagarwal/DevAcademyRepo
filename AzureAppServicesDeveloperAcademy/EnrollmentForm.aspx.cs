using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace AzureAppServicesDeveloperAcademy
{
    public partial class EnrollmentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            BusinessLayer.Register regemp = new Register();
            string name = txtName.Text;
            string emailid = txtEmailId.Text;
            bool success= regemp.RegisterEmployee(name, emailid);

            btnRegister.Visible = false;
            lblName.Visible = false;
            lblEmail.Visible = false;
            txtName.Visible = false;
            txtEmailId.Visible = false;
            lblmsg.Visible = true;
            if (success)
            {
                lblmsg.Text = "Request Received. We will share the registration status soon.";
                regemp.RegisterationEmail(name, emailid);
            }
            else
                lblmsg.Text = "SOmething went wrong. Please contact Anil/Amit for the registration request";
        }
    }
}