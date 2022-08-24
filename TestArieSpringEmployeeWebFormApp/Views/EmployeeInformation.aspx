<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeInformation.aspx.cs" Inherits="TestArieSpringEmployeeWebFormApp.Views.EmployeeInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Employees</h1>
    <% if (Request["error"] != null)
        {%>
    <div class="alert alert-dismissible alert-danger">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <p>
            Please select a record
        </p>
    </div>
    <%} %>
    <div class="row">
        <h3>Filter</h3>
        <table>
            <tr>
                <td>Last name</td>
                <td>
                    <asp:TextBox ID="txtEmployeeLastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
                    <asp:TextBox ID="txtEmployeePhone" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnSearch" OnClick="btnSearch_Click" runat="server" Text="Search" CssClass="btn btn-primary" />
    </div>
    <hr />
    <div class="row">
        <asp:Button ID="btnInsert" OnClick="btnInsert_Click" runat="server" Text="New" CssClass="btn btn-primary" />
        <asp:Button ID="btnUpdate" OnClick="btnUpdate_Click" runat="server" Text="Modify" CssClass="btn btn-primary" />
        <asp:Button ID="btnDelete" OnClick="btnDelete_Click" runat="server" Text="Delete" CssClass="btn btn-danger" />
    </div>
    <hr />
    <asp:GridView runat="server" ID="employeesGrid" CellPadding="4"
        ForeColor="#333333" GridLines="None"
        AutoGenerateSelectButton="true">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        
        
        
        <div>
        </div>
    </form>
</body>
</html>
