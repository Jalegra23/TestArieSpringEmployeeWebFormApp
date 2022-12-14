<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeInformation.aspx.cs" Inherits="TestArieSpringEmployeeWebFormApp.Views.EmployeeInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
    <title></title>
</head>
<body>      


    <form id="form1" runat="server">
        <h2>Employees Filter</h2>
    <% if (Request["error"] != null)
        {%>
    <div class="alert alert-dismissible alert-danger">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <p>
            Please select a record
        </p>
    </div>
    <%} %>

        <br />
        <br />
    <div class="row">
        
        <br />

        &nbsp; &nbsp; &nbsp;&nbsp;
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
        <br />
        <asp:Button ID="btnSearch" OnClick="btnSearch_Click" runat="server" Text="Search" CssClass="btn btn-info" />
    </div>
    <hr />
        <br />
    <div class="row">
        <asp:Button ID="btnInsert" OnClick="btnInsert_Click" runat="server" Text="New" CssClass="btn btn-info" />
        <asp:Button ID="btnUpdate" OnClick="btnUpdate_Click" runat="server" Text="Modify" CssClass="btn btn-info" />
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
