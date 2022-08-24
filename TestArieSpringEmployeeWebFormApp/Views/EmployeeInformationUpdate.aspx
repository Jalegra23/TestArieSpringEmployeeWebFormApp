<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeInformationUpdate.aspx.cs" Inherits="TestArieSpringEmployeeWebFormApp.Views.EmployeeInformationUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <h1>New Employee</h1>
    <asp:HiddenField ID="hiddenId" runat="server" />
    <% if (Request["error"] != null)
        {%>
    <div class="alert alert-dismissible alert-danger">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <p>
            Please select a date from the calendar
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
        <dt>
	        First name
		</dt>
		<dd>
            <asp:TextBox ID="txtEmployeeFirstName" runat="server"></asp:TextBox>
		</dd>
        <dt>
	        Phone
		</dt>
		<dd>
            <asp:TextBox ID="txtEmployeePhone" runat="server"></asp:TextBox>
		</dd>
        <dt>
	        Zip
		</dt>
		<dd>
            <asp:TextBox ID="txtEmployeeZip" runat="server"></asp:TextBox>
		</dd>
        <dt>
	        Hire date
		</dt>
		<dd>
            <asp:Calendar ID="calHireDate" runat="server"></asp:Calendar>
		</dd>
	</dl>
    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn cla_cancelar " OnClick ="btnCancel_Click" />

    <script src="../Scripts/WebForms/EmployeeInformationValidate.js"></script>


        <div>
        </div>
    </form>
</body>
</html>
