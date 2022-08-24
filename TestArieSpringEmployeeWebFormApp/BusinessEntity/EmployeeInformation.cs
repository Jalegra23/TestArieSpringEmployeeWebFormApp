using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestArieSpringEmployeeWebFormApp.BusinessEntity
{
    public class EmployeeInformation
    {
        public int EmployeeID { get; set; }
        public string EmployeeLastName { get; set; }
        public string EmployeeFirstName { get; set; }
        public string EmployeePhone { get; set; }
        public string EmployeeZip { get; set; }

        public DateTime HireDate { get; set; }

    }
}