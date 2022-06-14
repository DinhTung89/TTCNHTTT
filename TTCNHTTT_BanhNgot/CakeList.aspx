<%@ Page Title="" Language="C#" MasterPageFile="~/UI.Master" AutoEventWireup="true" CodeBehind="CakeList.aspx.cs" Inherits="TTCNHTTT_BanhNgot.CakeList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#99FF99" BorderColor="#FFCC00" BorderStyle="Solid" BorderWidth="5px" CellPadding="3" CellSpacing="2" DataKeyNames="masp" DataSourceID="SqlDataSource1" Width="742px" CaptionAlign="Right" style="font-weight: 700; margin-left: 0px;">
        <Columns>
            <asp:BoundField DataField="masp" HeaderText="Mã S&#7843;n Ph&#7849;m" ReadOnly="True" SortExpression="masp" />
            <asp:BoundField DataField="tensp" HeaderText="Tên S&#7843;n Ph&#7849;m" SortExpression="tensp" />
            <asp:BoundField DataField="mausac" HeaderText="Màu S&#7855;c" SortExpression="mausac" />
            <asp:BoundField DataField="giaban" HeaderText="Giá Bán" SortExpression="giaban" />
            <asp:BoundField DataField="soluongco" HeaderText="S&#7889; L&#432;&#7907;ng Có" SortExpression="soluongco" />
     <asp:TemplateField HeaderText=" &#7842;nh Minh H&#7885;a">
       <ItemTemplate>
           <asp:Image  ID="anhminhhoa" runat="server" ImageUrl='<%#Eval("anhminhhoa") %>' Width="150px" Height="150px" />

       </ItemTemplate>

       <%--   <a href='GioHang.aspx?masp=<%# Eval("masp") %>&name=<%# Eval("tensp")
                   %>&image=<%#Eval("anhminhhoa")
                   %>&giaban=<%# Eval("giaban") %>&action=add' class="button">Mua hàng</a>--%>

   </asp:TemplateField>
      <%--      <asp:BoundField DataField="mota" HeaderText="mota" SortExpression="mota" />--%>
            <asp:BoundField DataField="madm" HeaderText="Mã Danh M&#7909;c" SortExpression="madm" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <%--        link edit />--%>
            <asp:HyperLinkField DataNavigateUrlFormatString='Edit.aspx?masp={0}' DataNavigateUrlFields="masp" Text="S&#7917;a" />

        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BanhNgotabcConnectionString2 %>" DeleteCommand="DELETE FROM [sanpham] WHERE [masp] = @masp" InsertCommand="INSERT INTO [sanpham] ([masp], [tensp], [mausac], [giaban], [soluongco], [anhminhhoa], [mota], [madm]) VALUES (@masp, @tensp, @mausac, @giaban, @soluongco, @anhminhhoa, @mota, @madm)" SelectCommand="SELECT * FROM [sanpham]" UpdateCommand="UPDATE [sanpham] SET [tensp] = @tensp, [mausac] = @mausac, [giaban] = @giaban, [soluongco] = @soluongco, [anhminhhoa] = @anhminhhoa, [mota] = @mota, [madm] = @madm WHERE [masp] = @masp">
        <DeleteParameters>
            <asp:Parameter Name="masp" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="masp" Type="String" />
            <asp:Parameter Name="tensp" Type="String" />
            <asp:Parameter Name="mausac" Type="String" />
            <asp:Parameter Name="giaban" Type="Int32" />
            <asp:Parameter Name="soluongco" Type="Int32" />
            <asp:Parameter Name="anhminhhoa" Type="String" />
<%--            <asp:Parameter Name="mota" Type="String" />--%>
            <asp:Parameter Name="madm" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tensp" Type="String" />
            <asp:Parameter Name="mausac" Type="String" />
            <asp:Parameter Name="giaban" Type="Int32" />
            <asp:Parameter Name="soluongco" Type="Int32" />
            <asp:Parameter Name="anhminhhoa" Type="String" />
<%--            <asp:Parameter Name="mota" Type="String" />--%>
            <asp:Parameter Name="madm" Type="String" />
            <asp:Parameter Name="masp" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
