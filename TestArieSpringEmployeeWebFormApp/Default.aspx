<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestArieSpringEmployeeWebFormApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>TEST PROJECT FOR THE EMPLOYEE INFORMATION MAINTENANCE</h2>
        <p class="lead"><h3>Important Notes:</h3></p>
        
        <p class="lead">
            -Execute the following file (Against your SQL Server / Will create the Database / Corresponding EmployeeInformation table / Perform the Initial insert statements): 
            <br />
            <br />
            Test_project_AireSpring_SQL_Statements.sql
            <br />
            <br />
            -Go to the Web.config file and modify the connection string according to your settings (Visual Studio Project)
            <br />
            <br />
            Example:
            <br />
            <br />   
            -Modify the ID and Password according to your SQL server-> security->login (configurations)
           <br />
           <br /> 
            -Feel free to use the Menus above to interact with the application modules

              
        

        </p>
        

    </div>

    

</asp:Content>
