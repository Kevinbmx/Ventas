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
    
    public partial class Venta : System.Web.UI.Page
    {
        EN_Tbl_venta venta = new EN_Tbl_venta();
        CT_Tbl_venta Negocio = new CT_Tbl_venta();
        protected void Page_Load(object sender, EventArgs e)
        {
            lista();

        }
        public void lista()
        {
            GridView1.DataSource = Negocio.SelectAllList();
            GridView1.DataBind();
        }

        
        protected void Button3_Click(object sender, EventArgs e)
        {
            venta.Cliente_id = Convert.ToInt32(DropDownList1.Text);
            venta.Fecha = txtfecha.Text;
            venta.Total = 0;
            Negocio.Insert(venta);
            
            Detalle d = new Detalle();
            
            Response.Redirect("Detalle.aspx");

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = DropDownList1.Text;
        }

       
    }
}