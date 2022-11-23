<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepartmentPage.aspx.cs" Inherits="Challenge6.DepartmentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <table style="margin-top:60px;border-spacing:3px 5px">
                   
                    <tr>
                        <th colspan="2">
                            <asp:Label ID="Label1" runat="server"><b><u style="font-size:larger">Department Details</u></b></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    
                    <tr>
                        <th style="text-align:left;padding:5px;">
                            <asp:Label ID="Label4" runat="server" Text="Department Name"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                        </th>                       
                    </tr>
                    <tr>
                        <th colspan="2"><b ><a href="../DesignationPage.aspx" style="color:cornflowerblue">Go back</a></b></th>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </th>
                    </tr>
                   
                </table>
       
            </center>
        </div>
    </form>
</body>
</html>
