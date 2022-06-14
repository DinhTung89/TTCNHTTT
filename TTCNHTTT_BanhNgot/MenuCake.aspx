
<%@ Page Title="" Language="C#" MasterPageFile="~/UI.Master" AutoEventWireup="true" CodeBehind="MenuCake.aspx.cs" Inherits="TTCNHTTT_BanhNgot.MenuCake" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="masp" DataSourceID="SqlDataSource1" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderStyle="Solid" BorderWidth="10px" CellPadding="30" CellSpacing="30" ForeColor="Black" GridLines="Both" RepeatColumns="2" UseAccessibleHeader="True" style="font-weight: 700; margin-right: 69px;" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="679px">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <ItemTemplate>
        <strong>Mã SP:</strong>
        <asp:Label ID="maspLabel" runat="server" Text='<%# Eval("masp") %>' Width="150px" Height="30px" />
        <br />
        <strong>Tên Sp:</strong>
        <asp:Label ID="tenspLabel" runat="server" Text='<%# Eval("tensp") %>' />
        <br />
        <br />
        <asp:Image ID="anhminhhoa" runat="server" ImageUrl='<%# Eval("anhminhhoa") %>' Width="200px" Height="200px" style="margin-left: 6px" />
        <br />
        <br />
        <strong>Màu S&#7855;c:</strong>
        <asp:Label ID="mausacLabel" runat="server" Text='<%# Eval("mausac") %>' />
        <br />
        <strong>Giá Bán:</strong>
        <asp:Label ID="giabanLabel" runat="server" Text='<%# Eval("giaban") %>' />
        <br />
        <strong>S&#7889; L&#432;&#417;ng Có:</strong>
        <asp:Label ID="soluongcoLabel" runat="server" Text='<%# Eval("soluongco") %>' />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><strong>Mô T&#7843;:</strong>
        <asp:Label ID="motaLabel" runat="server" Text='<%# Eval("mota") %>' />
        <br />
        <strong>Mã DM:</strong>
        <asp:Label ID="madmLabel" runat="server" Text='<%# Eval("madm") %>' />

        <br />
<br />
    </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BanhNgotabcConnectionString %>" DeleteCommand="DELETE FROM [sanpham] WHERE [masp] = @masp" InsertCommand="INSERT INTO [sanpham] ([masp], [tensp], [mausac], [giaban], [soluongco], [anhminhhoa], [mota], [madm]) VALUES (@masp, @tensp, @mausac, @giaban, @soluongco, @anhminhhoa, @mota, @madm)" 
    SelectCommand="SELECT * FROM [sanpham] Where  madm=@madm"
    UpdateCommand="UPDATE [sanpham] SET [tensp] = @tensp, [mausac] = @mausac, [giaban] = @giaban, [soluongco] = @soluongco, [anhminhhoa] = @anhminhhoa, [mota] = @mota, [madm] = @madm WHERE [masp] = @masp">
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
        <asp:Parameter Name="mota" Type="String" />
        <asp:Parameter Name="madm" Type="String" />
    </InsertParameters>
   <SelectParameters>
            <asp:QueryStringParameter Name="madm" Type="String" QueryStringField="madm" />
   </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="tensp" Type="String" />
        <asp:Parameter Name="mausac" Type="String" />
        <asp:Parameter Name="giaban" Type="Int32" />
        <asp:Parameter Name="soluongco" Type="Int32" />
        <asp:Parameter Name="anhminhhoa" Type="String" />
        <asp:Parameter Name="mota" Type="String" />
        <asp:Parameter Name="madm" Type="String" />
        <asp:Parameter Name="masp" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
