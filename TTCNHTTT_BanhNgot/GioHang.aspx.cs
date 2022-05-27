using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TTCNHTTT_BanhNgot
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string action = Request["action"];
            if (action != null)
            {
                if (action.Equals("del"))
                {
                    List<CartItem> li2 = (List<CartItem>)Session["Cart"];

                    CartItem ci2 = new CartItem();
                    ci2.product.masp = Request["masp"];
                    li2.Remove(ci2);
                    Session["Cart"] = li2;

                }
                else if (action.Equals("add"))
                {
                    string masp = Request["masp"];



                    string name = Request["name"];
                    string image = Request["image"];
                    decimal giaban = Decimal.Parse(Request["giaban"]);
                    CartItem ci = new CartItem();
                    ci.product.masp = masp;
                    ci.product.tensp = name;
                    ci.product.hinhanh = image;
                    ci.product.giaban = giaban;
                    ci.quantity = 1;

                    List<CartItem> li = (List<CartItem>)Session["Cart"];

                    if (li == null)

                    {
                        li = new List<CartItem>();
                    }

                    if (li.Contains(ci))
                    {

                        li[li.IndexOf(ci)].quantity++;
                    }
                    else
                        li.Add(ci);
                    Session["Cart"] = li;
                }
                else if (action.Equals("delall"))
                {
                    Session["Cart"] = null;
                }
                else if (action.Equals("update")) //Update 1 lần ở cuối form
                {
                    // Trong master phải thêm action <form id="form1" runat="server"
                    //    action = "ShoppingCart.aspx" > nếu không action sẽ mặc định là del hoặc add tùy theo khi ta click
                    //vào link nào.Trong tất cả các form hiển thị, chỉ có button update là submit
                    List<CartItem> li = (List<CartItem>)Session["Cart"];
                    string masp = Request["masp"];
                    string quantity = Request["qq"];
                    string[] apid = masp.Split(',');
                    string[] aquantity = quantity.Split(',');
                    int i = 0;

                    foreach (var item in li)

                    {
                        CartItem it = new CartItem();
                        it.product.masp = apid[i];

                        it.quantity = int.Parse(aquantity[i]);

                        int ix = li.IndexOf(it);
                        li[ix].quantity = it.quantity;
                        i++;
                    }
                    Session["Cart"] = li;
                }
            }
        }
    }
}
    
