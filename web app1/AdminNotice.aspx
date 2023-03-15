<%@ Page Title="" Language="C#" MasterPageFile="~/namuna.Master" AutoEventWireup="true" CodeBehind="AdminNotice.aspx.cs" Inherits="web_app1.AdminNotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" DefaultMode="Insert" OnItemInserting="DetailsView1_ItemInserting" runat="server" DataSourceID="SqlDataSource1" Height="50px" Width="787px" AutoGenerateRows="False" DataKeyNames="NewsId" OnPageIndexChanging="DetailsView1_PageIndexChanging" AllowPaging="True">
        <Fields>
            <asp:BoundField DataField="NewsId" HeaderText="NewsId" ReadOnly="True" Visible="false" SortExpression="NewsId" />
            <asp:BoundField DataField="PublishDate" HeaderText="PublishDate" SortExpression="PublishDate" />
            <asp:BoundField DataField="HeadLine" HeaderText="HeadLine" SortExpression="HeadLine" />
            <asp:CheckBoxField DataField="Popup" HeaderText="Popup" SortExpression="Popup" />
            <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" InsertVisible="false" />
            <asp:TemplateField>
                <HeaderTemplate>
                    Choose Image for Notice:
                </HeaderTemplate>
                <InsertItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server"  /><br />
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NewsId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="789px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="NewsId" HeaderText="NewsId" ReadOnly="True" SortExpression="NewsId" />
            <asp:BoundField DataField="PublishDate" HeaderText="PublishDate" SortExpression="PublishDate" />
            <asp:BoundField DataField="HeadLine" HeaderText="HeadLine" SortExpression="HeadLine" />
            <asp:CheckBoxField DataField="Popup" HeaderText="Popup" SortExpression="Popup" />
            <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BcaConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Notice]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Notice] WHERE [NewsId] = @original_NewsId AND [PublishDate] = @original_PublishDate AND [HeadLine] = @original_HeadLine AND [Popup] = @original_Popup AND [ImagePath] = @original_ImagePath" InsertCommand="INSERT INTO [Notice] ([NewsId], [PublishDate], [HeadLine], [Popup], [ImagePath]) VALUES (@NewsId, @PublishDate, @HeadLine, @Popup, @ImagePath)" UpdateCommand="UPDATE [Notice] SET [PublishDate] = @PublishDate, [HeadLine] = @HeadLine, [Popup] = @Popup, [ImagePath] = @ImagePath WHERE [NewsId] = @original_NewsId AND [PublishDate] = @original_PublishDate AND [HeadLine] = @original_HeadLine AND [Popup] = @original_Popup AND [ImagePath] = @original_ImagePath">
        <DeleteParameters>
            <asp:Parameter Name="original_NewsId" Type="Int64" />
            <asp:Parameter Name="original_PublishDate" Type="String" />
            <asp:Parameter Name="original_HeadLine" Type="String" />
            <asp:Parameter Name="original_Popup" Type="Boolean" />
            <asp:Parameter Name="original_ImagePath" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NewsId" Type="Int64" />
            <asp:Parameter Name="PublishDate" Type="String" />
            <asp:Parameter Name="HeadLine" Type="String" />
            <asp:Parameter Name="Popup" Type="Boolean" />
            <asp:Parameter Name="ImagePath" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PublishDate" Type="String" />
            <asp:Parameter Name="HeadLine" Type="String" />
            <asp:Parameter Name="Popup" Type="Boolean" />
            <asp:Parameter Name="ImagePath" Type="String" />
            <asp:Parameter Name="original_NewsId" Type="Int64" />
            <asp:Parameter Name="original_PublishDate" Type="String" />
            <asp:Parameter Name="original_HeadLine" Type="String" />
            <asp:Parameter Name="original_Popup" Type="Boolean" />
            <asp:Parameter Name="original_ImagePath" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
