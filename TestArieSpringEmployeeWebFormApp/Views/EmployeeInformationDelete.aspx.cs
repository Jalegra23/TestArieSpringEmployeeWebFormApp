using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestArieSpringEmployeeWebFormApp.BusinessLogic;

namespace TestArieSpringEmployeeWebFormApp.Views
{
    public partial class EmployeeInformationDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt16(Request.QueryString["id"]);
                DataTable dt = new BusinessLogic.blEmployee().Select("", "", id);
                DataRow row = dt.Rows[0];
                this.hiddenEmployeeId.Value = row["EmployeeId"].ToString();

                this.lblEmployeeFirstName.Text = row["EmployeeFirstName"].ToString();
                this.lblEmployeeLastName.Text = row["EmployeeLastName"].ToString();
                this.lblEmployeePhone.Text = row["EmployeePhone"].ToString();
                this.lblEmployeeZip.Text = row["EmployeeZip"].ToString();
                this.lblEmployeeHireDate.Text = row["HireDate"].ToString();
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect(@"~/Views/EmployeeInformation");
            }
            catch 
            { 
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(this.hiddenEmployeeId.Value);
            new BusinessLogic.blEmployee().Delete(id);
            try
            {
                Response.Redirect(@"~/Views/EmployeeInformation");
            }
            catch 
            { 
            }
        }
    }
}