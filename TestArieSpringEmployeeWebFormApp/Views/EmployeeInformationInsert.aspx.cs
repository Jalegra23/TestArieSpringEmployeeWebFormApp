using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestArieSpringEmployeeWebFormApp.Views
{
    public partial class EmployeeInformationInsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["error"] != null)
                this.hidError.Value = Request["error"];

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            
            if (calHireDate.SelectedDate == null || calHireDate.SelectedDate == DateTime.Parse("1/1/0001 00:00:00"))
            {
                Response.Redirect(@"~/Views/EmployeeInformationInsert?error='You must select a date'");
                return;
            }

            BusinessEntity.EmployeeInformation Employee = new BusinessEntity.EmployeeInformation();
            Employee.EmployeeLastName = txtEmployeeLastName.Text;
            Employee.EmployeeFirstName = txtEmployeeFirstName.Text;
            Employee.HireDate = calHireDate.SelectedDate;
            Employee.EmployeePhone = txtEmployeePhone.Text;
            Employee.EmployeeZip = txtEmployeeZip.Text;

            new BusinessLogic.blEmployee().Insert(Employee);
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