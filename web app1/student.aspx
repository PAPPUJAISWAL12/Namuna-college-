<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="web_app1.student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>student List</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 649px">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="654px">
                <Columns>
                    <asp:BoundField DataField="SID" HeaderText="SID" ReadOnly="True" SortExpression="SID" />
                    <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                    <asp:BoundField DataField="Addr" HeaderText="Addr" SortExpression="Addr" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collageConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [SID] = @SID" InsertCommand="INSERT INTO [Table] ([SID], [SName], [Addr], [Phone]) VALUES (@SID, @SName, @Addr, @Phone)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [SName] = @SName, [Addr] = @Addr, [Phone] = @Phone WHERE [SID] = @SID">
                <DeleteParameters>
                    <asp:Parameter Name="SID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="SID" Type="Int32" />
                    <asp:Parameter Name="SName" Type="String" />
                    <asp:Parameter Name="Addr" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SName" Type="String" />
                    <asp:Parameter Name="Addr" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="SID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
