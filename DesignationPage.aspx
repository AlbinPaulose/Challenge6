<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignationPage.aspx.cs" Inherits="Challenge6.DesignationPage" %>

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
                            <asp:Label ID="Label1" runat="server"><b><u style="font-size:larger">Designation Details</u></b></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align:left;padding:5px;">
                           <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
                        </th>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" style="width:170px"></asp:DropDownList><br />
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align:left;padding:5px;">
                            <asp:Label ID="Label4" runat="server" Text="Designation Name"></asp:Label>
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
                        <th colspan="2"><b ><a href="../DepartmentPage.aspx" style="color:cornflowerblue">Click here to add department</a></b></th>
                    </tr>
                </table>
       
            </center>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DesignationId" HorizontalAlign="Center" EmptyDataText="No Records to Display" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="DesignationId" HeaderText="Designation Id" />
                    <asp:BoundField DataField="DesignationName" HeaderText="Designation Name" />

                    <asp:TemplateField HeaderText="Department Id">
                        <EditItemTemplate>
                            <asp:DropDownList ID="dropdown2" runat="server" AutoPostBack="true" EnableViewState="true" ></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="label1" runat="server" Text='<%#Eval("department_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
