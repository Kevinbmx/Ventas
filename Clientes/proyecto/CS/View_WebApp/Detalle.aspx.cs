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
    public partial class Detalle : System.Web.UI.Page
    {
        EN_Tbl_detalleVenta detallee = new EN_Tbl_detalleVenta();
        CT_Tbl_detalleVenta Negocio = new CT_Tbl_detalleVenta();
        protected void Page_Load(object sender, EventArgs e)
        {
            lista();
        }
        public void lista()
        {
            GridView1.DataSource = Negocio.SelectAllList();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int sub=Convert.ToInt32(txtprecio.Text)*Convert.ToInt32(txtcatidad.Text);
            detallee.Venta_id = DropDownList1.SelectedIndex;
            detallee.Producto_id = droplisproducto.SelectedIndex;
            detallee.Precio = Convert.ToInt32(txtprecio.Text);
            detallee.Cantidad = Convert.ToInt32(txtcatidad.Text);
            detallee.Subtotal = sub;
            Negocio.Insert(detallee);

        }
    }
}