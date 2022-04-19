<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hienthi.aspx.cs" Inherits="test.hienthi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="masp" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="masp" HeaderText="masp" ReadOnly="True" SortExpression="masp" />
        <asp:BoundField DataField="tensp" HeaderText="tensp" SortExpression="tensp" />
        <asp:BoundField DataField="mausac" HeaderText="mausac" SortExpression="mausac" />
        <asp:BoundField DataField="giaban" HeaderText="giaban" SortExpression="giaban" />
        <asp:BoundField DataField="soluongco" HeaderText="soluongco" SortExpression="soluongco" />
   <asp:TemplateField>
       <ItemTemplate>
           <asp:Image ID="anhminhhoa" runat="server" ImageUrl='<%#Eval("anhminhhoa") %>' Width="80px" Height="80px" />

       </ItemTemplate>

   </asp:TemplateField>
        <asp:BoundField DataField="mota" HeaderText="mota" SortExpression="mota" />
        <asp:BoundField DataField="madm" HeaderText="madm" SortExpression="madm" />
        <asp:TemplateField HeaderText="Xóa" ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm ('Bạn có chắc muốn xóa ?') " ></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:HyperLinkField DataNavigateUrlFormatString='edit.aspx?masp={0}' DataNavigateUrlFields="masp" Text="edit" HeaderText="Edit" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BanhNgotabcConnectionString %>" DeleteCommand="DELETE FROM [sanpham] WHERE [masp] = @masp" InsertCommand="INSERT INTO [sanpham] ([masp], [tensp], [mausac], [giaban], [soluongco], [anhminhhoa], [mota], [madm]) VALUES (@masp, @tensp, @mausac, @giaban, @soluongco, @anhminhhoa, @mota, @madm)" SelectCommand="SELECT * FROM [sanpham]" UpdateCommand="UPDATE [sanpham] SET [tensp] = @tensp, [mausac] = @mausac, [giaban] = @giaban, [soluongco] = @soluongco, [anhminhhoa] = @anhminhhoa, [mota] = @mota, [madm] = @madm WHERE [masp] = @masp">
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
