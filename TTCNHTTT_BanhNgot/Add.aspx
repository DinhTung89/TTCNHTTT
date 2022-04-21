<%@ Page Title="" Language="C#" MasterPageFile="~/UI.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="TTCNHTTT_BanhNgot.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="masp" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="438px" OnItemInserting="FormView1_ItemInserting">
        <EditItemTemplate>
            masp:
            <asp:Label ID="maspLabel1" runat="server" Text='<%# Eval("masp") %>' />
            <br />
            tensp:
            <asp:TextBox ID="tenspTextBox" runat="server" Text='<%# Bind("tensp") %>' />
            <br />
            mausac:
            <asp:TextBox ID="mausacTextBox" runat="server" Text='<%# Bind("mausac") %>' />
            <br />
            giaban:
            <asp:TextBox ID="giabanTextBox" runat="server" Text='<%# Bind("giaban") %>' />
            <br />
            soluongco:
            <asp:TextBox ID="soluongcoTextBox" runat="server" Text='<%# Bind("soluongco") %>' />
            <br />
            anhminhhoa:
            <asp:TextBox ID="anhminhhoaTextBox" runat="server" Text='<%# Bind("anhminhhoa") %>' />
            <br />
            mota:
            <asp:TextBox ID="motaTextBox" runat="server" Text='<%# Bind("mota") %>' />
            <br />
            madm:
            <asp:TextBox ID="madmTextBox" runat="server" Text='<%# Bind("madm") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Mã SP: <asp:TextBox ID="maspTextBox" runat="server" Text='<%# Bind("masp") %>' />
       
            <br />
            <br />
       
            Tên SP:
            <asp:TextBox ID="tenspTextBox" runat="server" Text='<%# Bind("tensp") %>' />
           
            <br />
            <br />
           
            Màu S&#7855;c:
            <asp:TextBox ID="mausacTextBox" runat="server" Text='<%# Bind("mausac") %>' />
           
            <br />
            <br />
           
            Giá Bán:
            <asp:TextBox ID="giabanTextBox" runat="server" Text='<%# Bind("giaban") %>' />
          
            <br />
            <br />
          
            S&#7889; L&#432;&#7907;ng Có:
            <asp:TextBox ID="soluongcoTextBox" runat="server" Text='<%# Bind("soluongco") %>' />
           
            <br />
            <br />
           
            &#7842;nh Minh H&#7885;a:
            <asp:FileUpload ID="FileUpload1" runat="server" Height="40px" Width="230px" />
       
            <br />
            <br />
       
            Mô T&#7843;:
            <asp:TextBox ID="motaTextBox" runat="server" Text='<%# Bind("mota") %>' />
      
            <br />
            <br />
      
            Mã Danh M&#7909;c:&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tendm" DataValueField="madm">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BanhNgotabcConnectionString %>" SelectCommand="SELECT * FROM [danhmuc]"></asp:SqlDataSource>
          
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button CssClass="button-33"  ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button CssClass="button-33"  ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            masp:
            <asp:Label ID="maspLabel" runat="server" Text='<%# Eval("masp") %>' />
            <br />
            tensp:
            <asp:Label ID="tenspLabel" runat="server" Text='<%# Bind("tensp") %>' />
            <br />
            mausac:
            <asp:Label ID="mausacLabel" runat="server" Text='<%# Bind("mausac") %>' />
            <br />
            giaban:
            <asp:Label ID="giabanLabel" runat="server" Text='<%# Bind("giaban") %>' />
            <br />
            soluongco:
            <asp:Label ID="soluongcoLabel" runat="server" Text='<%# Bind("soluongco") %>' />
            <br />
            anhminhhoa:
            <asp:Label ID="anhminhhoaLabel" runat="server" Text='<%# Bind("anhminhhoa") %>' />
            <br />
            mota:
            <asp:Label ID="motaLabel" runat="server" Text='<%# Bind("mota") %>' />
            <br />
            madm:
            <asp:Label ID="madmLabel" runat="server" Text='<%# Bind("madm") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
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
