<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a.aspx.cs" Inherits="web_app1.BBA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bachelor In Business Administration(BBA)</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Bachelor In Business Administration(BBA)</h2>
            <p>BBA is one of the most Advanced streams of uneder-graduation study based on curriculum.
                BBA students are exposed to multiple subjects during their four years or 8 semesters of studies like : Marketing, Finance , Economics, Corporate Communication,
                Human Resource, Accounting, Sales And Distribution, Supply Chain Management, Advertisement and Taxation. With drowing industrial scenario in Nepal and expanding liberalization in the country's economy, the need for professional bussiness administrator is
                constantly on the rise. </p>
            <h3>Course Structure</h3>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />

            </asp:GridView>
            <table>
            <h4 style="background-color:purple; width:691px">Year1 <u>1st Semester </u> </h4>
            <Table border="1">
                <tr>
                    <th>S.N</th>
                    <th>Subject Name</th>
                    <th>Subject Code</th>
                    <th>Subject Status</th>
                    <th>Credit Hours</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>Business English I</td>
                    <td>BBA 1113</td>
                    <td>Minor</td> 
                    <td>3</td>
                    
                </tr>
                <tr>
                    <td>2</td>
                    <td>Principle of Management</td>
                    <td>BBA 111</td>
                    <td>Major</td>
                    <td>3</td>
                </tr>
                <tr>
                     <td>3</td>
                    <td>Micro Economics</td>
                    <td>BBA 2413</td>
                    <td>Major</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Introduction to Accounting</td>
                    <td>BBA 1143</td>
                    <td>Major</td>
                    <td>3</td>
                 </tr>
                <tr> 
                    <td>5</td>
                    <td>Fubdamental of Computer Principle&Programing</td>
                    <td>BBA 1153</td>
                    <td>Major</td>
                    <td>3</td>
                </tr>
            </Table> 
        </table>
        </div>
    </form>
</body>
</html>
