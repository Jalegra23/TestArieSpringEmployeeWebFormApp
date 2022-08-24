using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestArieSpringEmployeeWebFormApp.Views
{
    public partial class EmployeeInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadEmployeeInformation();
        }

        public void LoadEmployeeInformation()
        {
            var employeelastName = this.txtEmployeeLastName.Text;
            var employeePhone = this.txtEmployeePhone.Text;
            this.employeesGrid.DataSource = new BusinessLogic.blEmployee().Select(employeelastName, employeePhone);
            this.employeesGrid.DataBind();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("~/Views/EmployeeInformationInsert");
            }
            catch 
            {
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                if (employeesGrid.SelectedRow == null)
                {
                    Response.Redirect(@"~/Views/EmployeeInformation?error='Please select a record to Update'");
                    return;
                }

                var id = employeesGrid.SelectedRow.Cells[1].Text;
                Response.Redirect(@"~/Views/EmployeeInformationUpdate?id=" + id);
            }
            catch 
            { 
            
            }
            
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                if (employeesGrid.SelectedRow == null)
                {
                    Response.Redirect(@"~/Views/EmployeeInformationDelete?error='Please select a record to Delete'");
                    return;
                }

                var id = employeesGrid.SelectedRow.Cells[1].Text;
                Response.Redirect(@"~/Views/EmployeeInformationDelete?id=" + id);
            }
            catch 
            {
            
            }
            
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                this.LoadEmployeeInformation();
            }
            catch 
            {
            }
            
        }


    }
}