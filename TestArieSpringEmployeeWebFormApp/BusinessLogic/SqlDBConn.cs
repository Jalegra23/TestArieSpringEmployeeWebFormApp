using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace TestArieSpringEmployeeWebFormApp.BusinessLogic
{
    
    public class SqlDBConn
    {
        #region Common SQL Connection and Commands

                /// <summary>
                /// Returns a DataTable with the results of the specific query
                /// </summary>
                /// <param name="query"></param>
                public DataTable query(SqlCommand command)
                {
                    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                    conn.Open();
                    command.Connection = conn;

                    DataTable dt = new DataTable();
                    dt.Load(command.ExecuteReader());
                    conn.Close();

                    return dt;
                }

                // <summary>
                /// Return the number of rows affected after execute a query
                /// </summary>
       
                public int nonQuery(SqlCommand command)
                {
                    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                    conn.Open();
                    command.Connection = conn;
                    int responseNonQuery = command.ExecuteNonQuery();
                    conn.Close();

                    return responseNonQuery;
                }

        #endregion Common SQL Connection and Commands

    }
}