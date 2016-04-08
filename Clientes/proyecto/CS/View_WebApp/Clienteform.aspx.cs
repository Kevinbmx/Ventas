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
    public partial class Clienteform : System.Web.UI.Page
    {
        EN_Tbl_cliente cliente = new EN_Tbl_cliente();
        CT_Tbl_cliente Negocio = new CT_Tbl_cliente();
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

            cliente.Nombre = TextBox1.Text;
            cliente.Nit =Convert.ToInt32(TextBox2.Text);
            Negocio.Insert(cliente);
            lista();
        }
    }
}