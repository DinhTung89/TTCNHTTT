<%@ Page Title="" Language="C#" MasterPageFile="~/UI.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="TTCNHTTT_BanhNgot.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="masp" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemUpdating="FormView1_ItemUpdating" Width="544px">
        <EditItemTemplate>
            Mã SP:
            <asp:Label ID="maspLabel1" runat="server" Text='<%# Eval("masp") %>' />
            <br />
            Tên SP:
            <asp:TextBox ID="tenspTextBox" runat="server" Text='<%# Bind("tensp") %>' />
            Màu S&#7855;c:
            <asp:TextBox ID="mausacTextBox" runat="server" Text='<%# Bind("mausac") %>' />
            <br />
            Giá Bán:
            <asp:TextBox ID="giabanTextBox" runat="server" Text='<%# Bind("giaban") %>' />
            <br />
            S&#7889; L&#432;&#7907;ng Có:
            <asp:TextBox ID="soluongcoTextBox" runat="server" Text='<%# Bind("soluongco") %>' />
            <br />
            &#7842;nh Minh H&#7885;a:
            
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            Mô t&#7843;:
            <asp:TextBox ID="motaTextBox" runat="server" Text='<%# Bind("mota") %>' />
            <br />
      
        
            <asp:Button CssClass="button-33" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
&nbsp;<asp:Button CssClass="button-33"   ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
  
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BanhNgotabcConnectionString %>" DeleteCommand="DELETE FROM [sanpham] WHERE [masp] = @original_masp AND [tensp] = @original_tensp AND [mausac] = @original_mausac AND (([giaban] = @original_giaban) OR ([giaban] IS NULL AND @original_giaban IS NULL)) AND (([soluongco] = @original_soluongco) OR ([soluongco] IS NULL AND @original_soluongco IS NULL)) AND (([anhminhhoa] = @original_anhminhhoa) OR ([anhminhhoa] IS NULL AND @original_anhminhhoa IS NULL)) AND (([mota] = @original_mota) OR ([mota] IS NULL AND @original_mota IS NULL)) AND (([madm] = @original_madm) OR ([madm] IS NULL AND @original_madm IS NULL))" InsertCommand="INSERT INTO [sanpham] ([masp], [tensp], [mausac], [giaban], [soluongco], [anhminhhoa], [mota], [madm]) VALUES (@masp, @tensp, @mausac, @giaban, @soluongco, @anhminhhoa, @mota, @madm)" OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [sanpham] Where masp = @masp"
        UpdateCommand="UPDATE [sanpham] SET [tensp] = @tensp, [mausac] = @mausac, [giaban] = @giaban, [soluongco] = @soluongco, [anhminhhoa] = @anhminhhoa, [mota] = @mota, [madm] = @madm WHERE [masp] = @masp">
       
        <SelectParameters>
                <asp:QueryStringParameter Name="masp" Type="String" QueryStringField="masp" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="original_masp" Type="String" />
            <asp:Parameter Name="original_tensp" Type="String" />
            <asp:Parameter Name="original_mausac" Type="String" />
            <asp:Parameter Name="original_giaban" Type="Int32" />
            <asp:Parameter Name="original_soluongco" Type="Int32" />
            <asp:Parameter Name="original_anhminhhoa" Type="String" />
            <asp:Parameter Name="original_mota" Type="String" />
            <asp:Parameter Name="original_madm" Type="String" />
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
           
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
