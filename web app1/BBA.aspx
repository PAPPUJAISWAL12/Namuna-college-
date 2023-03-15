<%@ Page Title="" Language="C#" MasterPageFile="~/namuna.Master" AutoEventWireup="true" CodeBehind="BBA.aspx.cs" Inherits="web_app1.BBA1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><b>Bachelor In Business Administration(BBA)</b></h2>
            <p><b>BBA</b> is one of the most Advanced streams of uneder-graduation study based on curriculum.
                BBA students are exposed to multiple subjects during their four years or 8 semesters of studies like : Marketing, Finance , Economics, Corporate Communication,
                Human Resource, Accounting, Sales And Distribution, Supply Chain Management, Advertisement and Taxation. With drowing industrial scenario in Nepal and expanding liberalization in the country's economy, the need for professional bussiness administrator is
                constantly on the rise.</p>
      <h3>Course Structure</h3>
     <div class="row">
         <div class="col-sm-6">
             <h4 style="background-color:#00ff21; width: 526px;">Year 1 semester I</h4>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="147px" Width="526px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="S.N" HeaderText="S.N" ReadOnly="True" SortExpression="S.N" />
            <asp:BoundField DataField="Subject Name" HeaderText="Subject Name" SortExpression="Subject Name" />
            <asp:BoundField DataField="Subject Code" HeaderText="Subject Code" SortExpression="Subject Code" />
            <asp:BoundField DataField="Subject Status" HeaderText="Subject Status" SortExpression="Subject Status" />
            <asp:BoundField DataField="Credit Hours" HeaderText="Credit Hours" SortExpression="Credit Hours" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bbacoConnectionString %>" SelectCommand="SELECT * FROM [BBA]"></asp:SqlDataSource>
         </div>
     <div class="col-sm-6">
      <h4 style="background-color:#00ff21; width: 526px;">semester II</h4>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="bba2sem" Width="526px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N" ForeColor="#333333" GridLines="None" Height="147px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="S.N" HeaderText="S.N" ReadOnly="True" SortExpression="S.N" />
            <asp:BoundField DataField="Subject Name" HeaderText="Subject Name" SortExpression="Subject Name" />
            <asp:BoundField DataField="Subject Code" HeaderText="Subject Code" SortExpression="Subject Code" />
            <asp:BoundField DataField="Subject Status" HeaderText="Subject Status" SortExpression="Subject Status" />
            <asp:BoundField DataField="Credit Hours" HeaderText="Credit Hours" SortExpression="Credit Hours" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="bba2sem" runat="server" ConnectionString="<%$ ConnectionStrings:bbacoConnectionString %>" SelectCommand="SELECT * FROM [secondsem]"></asp:SqlDataSource>
     </div>
     </div>
    <div class="row">
        <div class="col-sm-6">
            <h4 style="background-color:#00ff21; width: 526px;">Year 2 Semester III</h4>
            <asp:GridView ID="GridView3" runat="server" Width="526px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N" DataSourceID="thirdsembba" ForeColor="#333333" Height="147px" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="S.N" HeaderText="S.N" ReadOnly="True" SortExpression="S.N" />
                    <asp:BoundField DataField="Subject Name" HeaderText="Subject Name" SortExpression="Subject Name" />
                    <asp:BoundField DataField="Subject Code" HeaderText="Subject Code" SortExpression="Subject Code" />
                    <asp:BoundField DataField="Subject Status" HeaderText="Subject Status" SortExpression="Subject Status" />
                    <asp:BoundField DataField="Credit Hours" HeaderText="Credit Hours" SortExpression="Credit Hours" />
                </Columns>
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
            <asp:SqlDataSource ID="thirdsembba" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:bbacoConnectionString %>" DeleteCommand="DELETE FROM [thirdsembba] WHERE [S.N] = @original_column1 AND [Subject Name] = @original_Subject_Name AND [Subject Code] = @original_Subject_Code AND [Subject Status] = @original_Subject_Status AND [Credit Hours] = @original_Credit_Hours" InsertCommand="INSERT INTO [thirdsembba] ([S.N], [Subject Name], [Subject Code], [Subject Status], [Credit Hours]) VALUES (@column1, @Subject_Name, @Subject_Code, @Subject_Status, @Credit_Hours)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [thirdsembba]" UpdateCommand="UPDATE [thirdsembba] SET [Subject Name] = @Subject_Name, [Subject Code] = @Subject_Code, [Subject Status] = @Subject_Status, [Credit Hours] = @Credit_Hours WHERE [S.N] = @original_column1 AND [Subject Name] = @original_Subject_Name AND [Subject Code] = @original_Subject_Code AND [Subject Status] = @original_Subject_Status AND [Credit Hours] = @original_Credit_Hours">
                <DeleteParameters>
                    <asp:Parameter Name="original_column1" Type="Int32" />
                    <asp:Parameter Name="original_Subject_Name" Type="String" />
                    <asp:Parameter Name="original_Subject_Code" Type="String" />
                    <asp:Parameter Name="original_Subject_Status" Type="String" />
                    <asp:Parameter Name="original_Credit_Hours" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="column1" Type="Int32" />
                    <asp:Parameter Name="Subject_Name" Type="String" />
                    <asp:Parameter Name="Subject_Code" Type="String" />
                    <asp:Parameter Name="Subject_Status" Type="String" />
                    <asp:Parameter Name="Credit_Hours" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Subject_Name" Type="String" />
                    <asp:Parameter Name="Subject_Code" Type="String" />
                    <asp:Parameter Name="Subject_Status" Type="String" />
                    <asp:Parameter Name="Credit_Hours" Type="String" />
                    <asp:Parameter Name="original_column1" Type="Int32" />
                    <asp:Parameter Name="original_Subject_Name" Type="String" />
                    <asp:Parameter Name="original_Subject_Code" Type="String" />
                    <asp:Parameter Name="original_Subject_Status" Type="String" />
                    <asp:Parameter Name="original_Credit_Hours" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
         <div class="col-sm-6">
              <h4 style="background-color:#00ff21; width: 526px;">Semester IV</h4>
             <asp:GridView ID="GridView4" runat="server" Width="526px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N" DataSourceID="fourthsembba" ForeColor="#333333" GridLines="None" Height="147px" >
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="S.N" HeaderText="S.N" ReadOnly="True" SortExpression="S.N" />
                     <asp:BoundField DataField="Subject Name" HeaderText="Subject Name" SortExpression="Subject Name" />
                     <asp:BoundField DataField="Subject Code" HeaderText="Subject Code" SortExpression="Subject Code" />
                     <asp:BoundField DataField="Subject Status" HeaderText="Subject Status" SortExpression="Subject Status" />
                     <asp:BoundField DataField="Credit Hours" HeaderText="Credit Hours" SortExpression="Credit Hours" />
                 </Columns>
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
             <asp:SqlDataSource ID="fourthsembba" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:bbacoConnectionString %>" DeleteCommand="DELETE FROM [fourthsem] WHERE [S.N] = @original_column1 AND [Subject Name] = @original_Subject_Name AND [Subject Code] = @original_Subject_Code AND [Subject Status] = @original_Subject_Status AND [Credit Hours] = @original_Credit_Hours" InsertCommand="INSERT INTO [fourthsem] ([S.N], [Subject Name], [Subject Code], [Subject Status], [Credit Hours]) VALUES (@column1, @Subject_Name, @Subject_Code, @Subject_Status, @Credit_Hours)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [fourthsem]" UpdateCommand="UPDATE [fourthsem] SET [Subject Name] = @Subject_Name, [Subject Code] = @Subject_Code, [Subject Status] = @Subject_Status, [Credit Hours] = @Credit_Hours WHERE [S.N] = @original_column1 AND [Subject Name] = @original_Subject_Name AND [Subject Code] = @original_Subject_Code AND [Subject Status] = @original_Subject_Status AND [Credit Hours] = @original_Credit_Hours">
                 <DeleteParameters>
                     <asp:Parameter Name="original_column1" Type="Int32" />
                     <asp:Parameter Name="original_Subject_Name" Type="String" />
                     <asp:Parameter Name="original_Subject_Code" Type="String" />
                     <asp:Parameter Name="original_Subject_Status" Type="String" />
                     <asp:Parameter Name="original_Credit_Hours" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="column1" Type="Int32" />
                     <asp:Parameter Name="Subject_Name" Type="String" />
                     <asp:Parameter Name="Subject_Code" Type="String" />
                     <asp:Parameter Name="Subject_Status" Type="String" />
                     <asp:Parameter Name="Credit_Hours" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="Subject_Name" Type="String" />
                     <asp:Parameter Name="Subject_Code" Type="String" />
                     <asp:Parameter Name="Subject_Status" Type="String" />
                     <asp:Parameter Name="Credit_Hours" Type="String" />
                     <asp:Parameter Name="original_column1" Type="Int32" />
                     <asp:Parameter Name="original_Subject_Name" Type="String" />
                     <asp:Parameter Name="original_Subject_Code" Type="String" />
                     <asp:Parameter Name="original_Subject_Status" Type="String" />
                     <asp:Parameter Name="original_Credit_Hours" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>
        </div>
       </div>
    <div class="row">
        <div class="col-sm-6">
            <h4 style="background-color:#00ff21; width: 526px;">Year 3 Semester V</h4>
            <asp:GridView ID="GridView5" runat="server" Width="526px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N" DataSourceID="fifthsembba" ForeColor="#333333" GridLines="None" Height="147px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="S.N" HeaderText="S.N" ReadOnly="True" SortExpression="S.N" />
                    <asp:BoundField DataField="Subject Name" HeaderText="Subject Name" SortExpression="Subject Name" />
                    <asp:BoundField DataField="Subject Code" HeaderText="Subject Code" SortExpression="Subject Code" />
                    <asp:BoundField DataField="Subject Status" HeaderText="Subject Status" SortExpression="Subject Status" />
                    <asp:BoundField DataField="Credit Hours" HeaderText="Credit Hours" SortExpression="Credit Hours" />
                </Columns>
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
            <asp:SqlDataSource ID="fifthsembba" runat="server" ConnectionString="<%$ ConnectionStrings:bbacoConnectionString %>" SelectCommand="SELECT * FROM [fifthsembba]"></asp:SqlDataSource>
        </div>         
        <div class="col-sm-6">
            <h4 style="background-color:#00ff21; width: 526px;">Semester VI</h4>
            <asp:GridView ID="GridView6" runat="server" Width="526px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N" DataSourceID="sixthsembba" ForeColor="#333333" GridLines="None" Height="147px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="S.N" HeaderText="S.N" ReadOnly="True" SortExpression="S.N" />
                    <asp:BoundField DataField="Subject Name" HeaderText="Subject Name" SortExpression="Subject Name" />
                    <asp:BoundField DataField="Subject Code" HeaderText="Subject Code" SortExpression="Subject Code" />
                    <asp:BoundField DataField="Subject Status" HeaderText="Subject Status" SortExpression="Subject Status" />
                    <asp:BoundField DataField="Credit Hours" HeaderText="Credit Hours" SortExpression="Credit Hours" />
                </Columns>
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
            <asp:SqlDataSource ID="sixthsembba" runat="server" ConnectionString="<%$ ConnectionStrings:bbacoConnectionString %>" SelectCommand="SELECT * FROM [sixthsem]"></asp:SqlDataSource>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <h4 style="background-color:#00ff21; width: 526px;">Year 4 Semester VII</h4>
            <asp:GridView ID="GridView7" runat="server" Width="526px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N" DataSourceID="senenthsembba" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="S.N" HeaderText="S.N" ReadOnly="True" SortExpression="S.N" />
                    <asp:BoundField DataField="Subject Name" HeaderText="Subject Name" SortExpression="Subject Name" />
                    <asp:BoundField DataField="Subject Code" HeaderText="Subject Code" SortExpression="Subject Code" />
                    <asp:BoundField DataField="Subject Status" HeaderText="Subject Status" SortExpression="Subject Status" />
                    <asp:BoundField DataField="Credit Hours" HeaderText="Credit Hours" SortExpression="Credit Hours" />
                </Columns>
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
            <asp:SqlDataSource ID="senenthsembba" runat="server" ConnectionString="<%$ ConnectionStrings:bbacoConnectionString %>" SelectCommand="SELECT * FROM [seventhsembba]"></asp:SqlDataSource>
        </div>
        <div class="col-sm-6">
             <h4 style="background-color:#00ff21; width: 526px;"> Semester VIII</h4>
            <asp:GridView ID="GridView8" runat="server" Width="526px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N" DataSourceID="semester8" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="S.N" HeaderText="S.N" ReadOnly="True" SortExpression="S.N" />
                    <asp:BoundField DataField="Subject Name" HeaderText="Subject Name" SortExpression="Subject Name" />
                    <asp:BoundField DataField="Subject Code" HeaderText="Subject Code" SortExpression="Subject Code" />
                    <asp:BoundField DataField="Subject Status" HeaderText="Subject Status" SortExpression="Subject Status" />
                    <asp:BoundField DataField="Credit Hours" HeaderText="Credit Hours" SortExpression="Credit Hours" />
                </Columns>
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
            <asp:SqlDataSource ID="semester8" runat="server" ConnectionString="<%$ ConnectionStrings:bbacoConnectionString %>" SelectCommand="SELECT * FROM [Semester8]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
