<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeInformationDelete.aspx.cs" Inherits="TestArieSpringEmployeeWebFormApp.Views.EmployeeInformationDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Delete Employee</h1>
    <h3>Please verify the information before deleting it, Do you agree with the changes?</h3>
    <asp:HiddenField ID="hiddenEmployeeId" runat="server" />
    <dl class="dl-horizontal">
		<dt>
	        Last name
		</dt>
		<dd>
            <asp:Label ID="lblEmployeeLastName" runat="server" ></asp:Label>
		</dd>
        <dt>
	        First name
		</dt>
		<dd>
            <asp:Label ID="lblEmployeeFirstName" runat="server"></asp:Label>
		</dd>
        <dt>
	        Phone
		</dt>
		<dd>
            <asp:Label ID="lblEmployeePhone" runat="server" Text="Label"></asp:Label>
		</dd>
        <dt>
	        Zip
		</dt>
		<dd>
            <asp:Label ID="lblEmployeeZip" runat="server" Text="Label"></asp:Label>
		</dd>
        <dt>
	        Hire date
		</dt>
		<dd>
            <asp:Label ID="lblEmployeeHireDate" runat="server" Text="Label"></asp:Label>
		</dd>
	</dl>
    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="btnDelete_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning" OnClick ="btnCancel_Click" />
        
        
        <div>
        </div>
    </form>
</body>
</html>
