using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using TestArieSpringEmployeeWebFormApp.BusinessEntity;

namespace TestArieSpringEmployeeWebFormApp.BusinessLogic
{
    public class blEmployee
    {

        #region CRUD Methods (Create/Insert - Read/Retrieve/Select - Update - Delete)

        //Select Method that receives the lastname /phone/ id as a parameter
        //uses the lastname and phone fields for the search option, using a like SQL statement
        //Sorts or Orders the result by the HireDate of the Employee Ascending
        public DataTable Select(string lastName = "", string phone = "", int id = 0)
        {
            string query = @"
                                SELECT [EmployeeID]
                                ,[EmployeeLastName]
                                ,[EmployeeFirstName]
                                ,[EmployeePhone]
                                ,[EmployeeZip]
                                ,convert(VARCHAR, [HireDate] ,101) [HireDate]
                                FROM EmployeeInformation 
                                WHERE (@lastName='' or EmployeeLastName like '%'+@lastName+'%')
                                AND (@phone='' or EmployeePhone like '%'+@phone+'%')
                                AND (@id=0 or EmployeeID=@id)
                                ORDER BY HireDate ASC";

            SqlCommand command = new SqlCommand(query);
            command.Parameters.Add(new SqlParameter("@lastName", lastName));
            command.Parameters.Add(new SqlParameter("@phone", phone));
            command.Parameters.Add(new SqlParameter("@id", id));
            return new SqlDBConn().query(command);

        }

        //Insert Method that receives as a parameter an Employee Object
        //It creates a new Employee
        public string Insert(EmployeeInformation Employee)
        {
            try
            {
                string query = @"
                                    INSERT INTO EmployeeInformation
                                    (EmployeeLastName
                                    ,EmployeeFirstName
                                    ,EmployeePhone
                                    ,EmployeeZip
                                    ,HireDate)
                                    select @EmployeeLastName
                                    ,@EmployeeFirstName
                                    ,@EmployeePhone
                                    ,@EmployeeZip
                                    ,@HireDate";

                SqlCommand cmd = new SqlCommand(query);
                cmd.Parameters.AddWithValue("@EmployeeLastName", Employee.EmployeeLastName);
                cmd.Parameters.AddWithValue("@EmployeeFirstName", Employee.EmployeeFirstName);
                cmd.Parameters.AddWithValue("@EmployeePhone", Employee.EmployeePhone);
                cmd.Parameters.AddWithValue("@EmployeeZip", Employee.EmployeeZip);
                cmd.Parameters.AddWithValue("@HireDate", Employee.HireDate);

                new SqlDBConn().nonQuery(cmd);

                return "ok";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        //Method that receives an Employee object
        //It updates the employee information
        public string Update(EmployeeInformation Employee)
        {

            var sql = @"
                        UPDATE [dbo].[EmployeeInformation]
                        SET  [EmployeeLastName] = @lastName
                            ,[EmployeeFirstName] = @firstName
                            ,[EmployeePhone] = @phone
                            ,[EmployeeZip] = @zip
                            ,[HireDate] = @hireDate
                         WHERE EmployeeID=@id";

            SqlCommand cmd = new SqlCommand(sql);
            cmd.Parameters.AddWithValue("@lastName", Employee.EmployeeLastName);
            cmd.Parameters.AddWithValue("@firstName", Employee.EmployeeFirstName);
            cmd.Parameters.AddWithValue("@phone", Employee.EmployeePhone);
            cmd.Parameters.AddWithValue("@zip", Employee.EmployeeZip);
            cmd.Parameters.AddWithValue("@hireDate", Employee.HireDate);
            cmd.Parameters.AddWithValue("@id", Employee.EmployeeID);

            new SqlDBConn().nonQuery(cmd);

            return "ok";
        }

        //Method that Deletes the Employee information based on the EmployeeID
        public string Delete(int id)
        {
            var sql = "delete from EmployeeInformation where employeeId=@id";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Parameters.AddWithValue("@id", id);
            new SqlDBConn().nonQuery(cmd);
            return "ok";
        }



        #endregion CRUD Methods (Create/Insert - Retrieve/Select - Update - Delete)

    }
}