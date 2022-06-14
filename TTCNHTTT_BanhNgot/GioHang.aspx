<%@ Page Title="" Language="C#" MasterPageFile="~/UI.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="TTCNHTTT_BanhNgot.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
 table {
 border-collapse: collapse;
 }
 th {
 font-size: smaller;
 }
        td, th {
            padding: 3px 5px;
            border: 1px solid #808080;
        }
 </style>
 <%
     Response.Write("<input type='hidden' name='action' value='update' />\n");
     decimal total = 0;
     List<TTCNHTTT_BanhNgot.CartItem> li = (List<TTCNHTTT_BanhNgot.CartItem>)Session["Cart"];
     if (li != null)
     {
         Response.Write("<table>");
         Response.Write("<tr><th>Mã sp</th><th>Tên s&#7843;n ph&#7849;m</th>");
         Response.Write("<th>Hình &#7843;nh</th><th>Giá ti&#7873;n</th>");
         Response.Write("<th>S&#7889; l&#432;&#7907;ng</th><th>Thành ti&#7873;n</th>");
         Response.Write("<th>Xóa</th></tr>\n");
         foreach (var item in li)
         {
             Response.Write("<tr>");
             Response.Write("<td align='center'>" + item.product.masp);
             Response.Write("<input type='hidden' name='MaSanPham' value='" + item.product.masp + "' />");
             Response.Write("</td>");
             Response.Write("<td>" + item.product.masp + "</td>\n");
             Response.Write("<td align='center'><img src='" + item.product.hinhanh + "' width='100'/></td>\n");
             Response.Write("<td align='center'>" + item.product.giaban + "</td>\n");
             Response.Write("<td align='center'>");
             Response.Write("<input type='text' name='qq' size='5' value='" +
            item.quantity + "' />\n");
             Response.Write("</td>");
             Response.Write("<td align='center'>" + (item.quantity *
            item.product.giaban).ToString("N0") + "</td>\n");
             Response.Write("<td align='center'><a href='ShoppingCart.aspx?action=del&MaSanPham="
            + item.product.masp + "'>Xóa</a></td>\n");
             Response.Write("</tr>\n\n");
             total += item.quantity * item.product.giaban;
         }
         Response.Write("</table>");
         Response.Write("<p>T&#7893;ng ti&#7873;n các s&#7843;n ph&#7849;m là:<b> " + total.ToString("N0") + " VN&#272;</b></p>");
         Response.Write("<p><a href='MenuCake.aspx'>Ti&#7871;p t&#7909;c mua hàng </a></p>\n");
         Response.Write("<input type='submit' value='Update' name='sb' />");
         Response.Write("<p><a href='ShoppingCart.aspx?action=delall'>Xóa t&#7845;t c&#7843;</a></p>\n");
         Response.Write("<p><a href='#'>&#272;&#7863;t hàng</a></p>\n");
     }
     else
     {
         Response.Write("<i>Ch&#432;a có s&#7843;n ph&#7849;m nào.</i>");
         Response.Write("<p><a href='Listproduct.aspx'>Ti&#7871;p t&#7909;c mua hàng</a></p>\n");
     }
 %>
</asp:Content>
