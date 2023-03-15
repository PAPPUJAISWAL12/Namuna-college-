<%@ Page Title="" Language="C#" MasterPageFile="~/namuna.Master" AutoEventWireup="true" CodeBehind="Notice.aspx.cs" Inherits="web_app1.Notice" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Recent Notices:</h3>
    <div class="row">
        <div class="col-sm-12">             
            <div class="alert alert-info table-responsive">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="NewsId" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                             <asp:BoundField DataField="NewsId" HeaderText="NewsId" Visible="false" ReadOnly="True" SortExpression="NewsId" />
                             <asp:BoundField DataField="PublishDate" HeaderText="Published Date" SortExpression="PublishDate" />
                             <asp:BoundField DataField="HeadLine" HeaderText="Notice Description" SortExpression="HeadLine" />
                             <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" />
                             <asp:TemplateField>
                                 <HeaderTemplate>Action</HeaderTemplate>
                                 <ItemTemplate>
                                     <asp:LinkButton ID="Buttonshow" runat="server" OnClick="Buttonshow_Click" >View Detail</asp:LinkButton>
                                 </ItemTemplate>
                             </asp:TemplateField>
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
                        </asp:gridview>
                        <asp:Button ID="btnShowPopup" style="display:none" runat="server" />
                        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"  TargetControlID="btnShowPopup" PopupControlID="pnlpopup" BackgroundCssClass="modalBackground"  CancelControlID="Button2"></asp:ModalPopupExtender>
                        <asp:Panel ID="pnlpopup" runat="server" CssClass="modalPopup MyPopUpStyle">
                            <table class="tableClass table-responsive" style="width:100%; margin:5px;">
                                <tr>
                                     <td class="thClass">
                                        <asp:Label ID="Label1" runat="server" Text="">&nbsp;&nbsp;&nbsp;</asp:Label><asp:Label ID="Label2" ForeColor="Green" runat="server" Text=""></asp:Label>
                                     </td>
                                </tr>
                                <tr>
                                     <td>
                                         <asp:Image ID="Image1"  runat="server" Height="500" />
                                     </td>
                                </tr>
                                <tr>
                                     <td style="text-align:right;" class="thClass">
                                        <asp:Button ID="Button2" runat="server" Text="Close" CssClass="btn btn-info" OnClick="Button2_Click" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BcaConnectionString %>" SelectCommand="SELECT * FROM [Notice] ORDER BY [NewsId] DESC"></asp:SqlDataSource>
                        </ContentTemplate>
                    </asp:UpdatePanel>                        
            </div>
        </div>
    </div>
</asp:Content>
