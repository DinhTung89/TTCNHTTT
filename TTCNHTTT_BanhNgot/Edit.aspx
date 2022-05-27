<%@ Page Title="" Language="C#" MasterPageFile="~/UI.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="TTCNHTTT_BanhNgot.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="masp" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemUpdating="FormView1_ItemUpdating" Width="544px">
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
            
            <asp:FileUpload ID="FileUpload1" runat="server" Height="40px" Width="230px" />
            <br />
            mota:
            <asp:TextBox ID="motaTextBox" runat="server" Text='<%# Bind("mota") %>' />
            <br />
            madm:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tendm" DataValueField="madm" SelectedValue='<%# Bind("madm") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BanhNgotabcConnectionString %>" DeleteCommand="DELETE FROM [danhmuc] WHERE [madm] = @original_madm AND [tendm] = @original_tendm" InsertCommand="INSERT INTO [danhmuc] ([madm], [tendm]) VALUES (@madm, @tendm)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [danhmuc]" UpdateCommand="UPDATE [danhmuc] SET [tendm] = @tendm WHERE [madm] = @original_madm AND [tendm] = @original_tendm">
                <DeleteParameters>
                    <asp:Parameter Name="original_madm" Type="String" />
                    <asp:Parameter Name="original_tendm" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="madm" Type="String" />
                    <asp:Parameter Name="tendm" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tendm" Type="String" />
                    <asp:Parameter Name="original_madm" Type="String" />
                    <asp:Parameter Name="original_tendm" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            masp:
            <asp:TextBox ID="maspTextBox" runat="server" Text='<%# Bind("masp") %>' />
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
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
