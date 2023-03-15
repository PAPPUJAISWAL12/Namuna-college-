<%@ Page Title="" Language="C#" MasterPageFile="~/namuna.Master" AutoEventWireup="true" CodeBehind="BCA.aspx.cs" Inherits="web_app1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>The <b>Bachelor of Computer Applications(BCA) course</b> usually consists of core courses in programming, algorithm and 
    data structures, advanced programming, computer organization and network fundamentals, relational database 
    management systems, Web programming, software engineering and visual programming. 
        Some of the main course
    highlights are meant to heighten technological know-how, to train students to become industry specialists,
    to provide research-based training and to encourage software development. The syllabus is intended to not only
    teach students theory and applications, but also help equip them with professional and communication skills. </p>
    <h3>Course Structure</h3>
   <div class="row">
       <div class="col-sm-6">
            <h4 style="background-color:#00ff21; width: 526px;">Year 1 First Semester</h4>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N." DataSourceID="bca" Height="16px" Width="526px" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="S.N." HeaderText="S.N." ReadOnly="True" SortExpression="S.N." />
            <asp:BoundField DataField="Course Code" HeaderText="Course Code" SortExpression="Course Code" />
            <asp:BoundField DataField="Module Name" HeaderText="Module Name" SortExpression="Module Name" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="bca" runat="server" ConnectionString="<%$ ConnectionStrings:BcaConnectionString %>" SelectCommand="SELECT * FROM [firstsem]"></asp:SqlDataSource>
   </div>
    <div class="col-sm-6">
    <h4 style="background-color:#00ff21; width: 526px;">Second Semester</h4>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N" DataSourceID="bca2sem" Width="526px" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="S.N" HeaderText="S.N" ReadOnly="True" SortExpression="S.N" />
            <asp:BoundField DataField="Course Code" HeaderText="Course Code" SortExpression="Course Code" />
            <asp:BoundField DataField="Module Name" HeaderText="Module Name" SortExpression="Module Name" />
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
    <asp:SqlDataSource ID="bca2sem" runat="server" ConnectionString="<%$ ConnectionStrings:secondsemConnectionString %>" SelectCommand="SELECT * FROM [secondsem]"></asp:SqlDataSource>
     </div>
  </div>
    <div class="row">
        <div class="col-sm-6">
    <h4 style="background-color:#00ff21; width: 526px;"> Year 2 Third Semester</h4>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N" DataSourceID="bca3sem" Width="526px" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="S.N" HeaderText="S.N" ReadOnly="True" SortExpression="S.N" />
            <asp:BoundField DataField="Course Code" HeaderText="Course Code" SortExpression="Course Code" />
            <asp:BoundField DataField="Module Name" HeaderText="Module Name" SortExpression="Module Name" />
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
    <asp:SqlDataSource ID="bca3sem" runat="server" ConnectionString="<%$ ConnectionStrings:thirdsemConnectionString %>" SelectCommand="SELECT * FROM [thirdsem]"></asp:SqlDataSource>
    </div>
        <div class="col-sm-6">
            <h4 style="background-color:#00ff21; width: 526px;"> Fourth Semester</h4>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="S.N" DataSourceID="fourthsem" CellPadding="4" Height="155px" Width="526px" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="S.N" HeaderText="S.N" ReadOnly="True" SortExpression="S.N" />
            <asp:BoundField DataField="Course Code" HeaderText="Course Code" SortExpression="Course Code" />
            <asp:BoundField DataField="Module Name" HeaderText="Module Name" SortExpression="Module Name" />
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
<asp:SqlDataSource ID="fourthsem" runat="server" ConnectionString="<%$ ConnectionStrings:fourthsemConnectionString %>" SelectCommand="SELECT * FROM [fourthsem]"></asp:SqlDataSource>
  </div>
 </div>
    <div class="row">
        <div class="col-sm-6">
    <h4 style="background-color:#00ff21; width: 526px;">Year 3 fifth Semester</h4>
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N." DataSourceID="bcafifthsem" GridLines="None" Width="526px" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="S.N." HeaderText="S.N." ReadOnly="True" SortExpression="S.N." />
            <asp:BoundField DataField="Course Code" HeaderText="Course Code" SortExpression="Course Code" />
            <asp:BoundField DataField="Module Name" HeaderText="Module Name" SortExpression="Module Name" />
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
    <asp:SqlDataSource ID="bcafifthsem" runat="server" ConnectionString="<%$ ConnectionStrings:BcaConnectionString %>" SelectCommand="SELECT * FROM [fifthsem]"></asp:SqlDataSource>
    </div>
        <div class="col-sm-6">
            <h4 style="background-color:#00ff21; width: 526px;">Sixth Semester</h4>
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N." DataSourceID="bcasixthsem" GridLines="None" Height="150px" Width="526px" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="S.N." HeaderText="S.N." ReadOnly="True" SortExpression="S.N." />
            <asp:BoundField DataField="Course Code" HeaderText="Course Code" SortExpression="Course Code" />
            <asp:BoundField DataField="Module Name" HeaderText="Module Name" SortExpression="Module Name" />
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
   <asp:SqlDataSource ID="bcasixthsem" runat="server" ConnectionString="<%$ ConnectionStrings:BcaConnectionString %>" SelectCommand="SELECT * FROM [sixthsem]"></asp:SqlDataSource>
     </div>
   </div>
    <div class="row">
        <div class="col-sm-6">
        <h4 style="background-color:#00ff21; width: 526px;">Year 4 Seventh Semester</h4>
    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N." DataSourceID="Seventhsem" GridLines="None" Width="526px" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="S.N." HeaderText="S.N." ReadOnly="True" SortExpression="S.N." />
            <asp:BoundField DataField="Course Code" HeaderText="Course Code" SortExpression="Course Code" />
            <asp:BoundField DataField="Module Name" HeaderText="Module Name" SortExpression="Module Name" />
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
    <asp:SqlDataSource ID="Seventhsem" runat="server" ConnectionString="<%$ ConnectionStrings:BcaConnectionString %>" SelectCommand="SELECT * FROM [Seventhsem]"></asp:SqlDataSource>
    </div>
        <div class="col-sm-6">
            <h4 style="background-color:#00ff21; width: 526px;">Eight Semester </h4>
            <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S.N." DataSourceID="eightsem" ForeColor="#333333" GridLines="None" Width="526px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="S.N." HeaderText="S.N." ReadOnly="True" SortExpression="S.N." />
                    <asp:BoundField DataField="Course Code" HeaderText="Course Code" SortExpression="Course Code" />
                    <asp:BoundField DataField="Module Name" HeaderText="Module Name" SortExpression="Module Name" />
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
            <asp:SqlDataSource ID="eightsem" runat="server" ConnectionString="<%$ ConnectionStrings:BcaConnectionString %>" SelectCommand="SELECT * FROM [eightsem]"></asp:SqlDataSource>
        </div>
  </div>
</asp:Content>
