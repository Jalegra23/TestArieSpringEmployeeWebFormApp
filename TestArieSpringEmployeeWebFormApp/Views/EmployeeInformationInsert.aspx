<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeInformationInsert.aspx.cs" Inherits="TestArieSpringEmployeeWebFormApp.Views.EmployeeInformationInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Employee Maintenance</title>
</head>
<body>
    <h1>New Employee Maintenance:</h1>
        

    <form id="form1" runat="server">
        <asp:HiddenField ID="hidError" runat="server" />
        <div>
            <% if (!string.IsNullOrEmpty(hidError.Value))
        {%>
    <div class="alert alert-dismissible alert-danger">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <p>
            You must select a date
        </p> 
    </div>
    <%} %>

    <dl class="dl-horizontal">
        <dt>            
            Last name
        </dt>
        <dd>
            <asp:TextBox ID="txtEmployeeLastName" runat="server"></asp:TextBox>
        </dd>
        <dt>First name
        </dt>
        <dd>
            <asp:TextBox ID="txtEmployeeFirstName" runat="server"></asp:TextBox>
        </dd>
        <dt>Phone
        </dt>
        <dd>
            <asp:TextBox ID="txtEmployeePhone" runat="server"></asp:TextBox>
        </dd>
        <dt>Zip
        </dt>
        <dd>
            <asp:TextBox ID="txtEmployeeZip" runat="server"></asp:TextBox>
        </dd>
        <dt>Hire date
        </dt>
        <dd>
            <asp:Calendar ID="calHireDate"  runat="server" ></asp:Calendar>
        </dd>
    </dl>
    <asp:Button ID="btnSave"  OnClick="btnSave_Click" runat="server" Text="Save" CssClass="btn btn-primary"/>
    <asp:Button ID="btnCancel"  OnClick="btnCancel_Click" runat="server" Text="Cancel" CssClass="btn cla_cancelar"/>
    <script src="../Scripts/WebForms/EmployeeInformationValidate.js"></script>
        </div>
    </form>
</body>
</html>
