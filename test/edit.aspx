<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="test.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="masp" DataSourceID="SqlDataSource1" OnItemUpdating="FormView1_ItemUpdating" DefaultMode="Edit">
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
            <asp:FileUpload ID="FileUpload1" runat="server" />
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

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BanhNgotabcConnectionString %>"
        SelectCommand="SELECT * FROM [sanpham] Where masp=@masp">
        <SelectParameters>
            <asp:QueryStringParameter Name="masp" Type="String" QueryStringField="masp" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
