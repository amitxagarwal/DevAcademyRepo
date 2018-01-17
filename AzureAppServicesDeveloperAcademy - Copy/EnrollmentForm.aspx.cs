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
            string  msg= regemp.RegisterEmployee(txtName.Text, txtEmailId.Text);
            btnRegister.Visible = false;
            lblName.Visible = false;
            lblEmail.Visible = false;
            txtName.Visible = false;
            txtEmailId.Visible = false;
            lblmsg.Visible = true;
            lblmsg.Text = msg;
        }
    }
}