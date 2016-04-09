using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controllers;
using Entities;

namespace View
{
    public partial class Productoform : System.Web.UI.Page
    {
        EN_Tbl_producto producto = new EN_Tbl_producto();
        CT_Tbl_producto Negocio = new CT_Tbl_producto();
        protected void Page_Load(object sender, EventArgs e)
        {
            lista();
           
        }
        public void lista(){
            GridView1.DataSource = Negocio.SelectAllList();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            producto.Nombre = TextBox1.Text;
            producto.Precio =Convert.ToInt32(TextBox2.Text);
            Negocio.Insert(producto);
            lista();
            Response.Redirect("Productoform.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Negocio.Delete(Convert.ToInt32(DropDownList1.Text));
            lista();
            Response.Redirect("Productoform.aspx");
        }



    }
}