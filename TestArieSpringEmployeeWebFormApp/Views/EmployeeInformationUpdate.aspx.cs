using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestArieSpringEmployeeWebFormApp.Views
{
    public partial class EmployeeInformationUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt16(Request.QueryString["id"]);
                DataTable dt = new BusinessLogic.blEmployee().Select("", "", id);
                DataRow row = dt.Rows[0];
                this.hiddenId.Value = row["EmployeeId"].ToString();

                this.txtEmployeeFirstName.Text = row["EmployeeFirstName"].ToString();
                this.txtEmployeeLastName.Text = row["EmployeeLastName"].ToString();
                this.txtEmployeePhone.Text = row["EmployeePhone"].ToString();
                this.txtEmployeeZip.Text = row["EmployeeZip"].ToString();

                var selectedDate = row["HireDate"].ToString();
                
                if (selectedDate == null) 
                {
                    selectedDate = DateTime.Now.ToString();
                }                
                
                
                var date = DateTime.ParseExact(selectedDate, "MM/dd/yyyy", CultureInfo.InvariantCulture);            
                
                


                this.calHireDate.SelectedDate = date;
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (calHireDate.SelectedDate == null || calHireDate.SelectedDate == DateTime.Parse("1/1/0001 00:00:00"))
            {
                Response.Redirect(@"~/Views/EmployeeInformationInsert?error='Please select a date from the calendar'");
                return;
            }


            BusinessEntity.EmployeeInformation Employee = new BusinessEntity.EmployeeInformation();
            Employee.EmployeeID = Convert.ToInt16(this.hiddenId.Value);
            Employee.EmployeeLastName = txtEmployeeLastName.Text;
            Employee.EmployeeFirstName = txtEmployeeFirstName.Text;
            Employee.HireDate = calHireDate.SelectedDate;
            Employee.EmployeePhone = txtEmployeePhone.Text;
            Employee.EmployeeZip = txtEmployeeZip.Text;

            new BusinessLogic.blEmployee().Update(Employee);
            try
            {
                Response.Redirect(@"~/Views/EmployeeInformation");
            }
            catch
            { 
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

    }
}