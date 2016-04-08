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
    
    public partial class WebForm1 : System.Web.UI.Page
    {
        CT_Tbl_venta a = new CT_Tbl_venta();
        EN_Tbl_venta V = new EN_Tbl_venta();
        
        public void listas()
        {

           
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                CargarLista();
        }

        private void CargarLista()
        {
            try
            {
                ContactosGridView.DataSource = a.SelectAllList();
                ContactosGridView.DataBind();
            }
            catch (Exception ex)
            {

            }
        }


        protected void ContactosGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                try
                {
                    int contactoId = Convert.ToInt32(e.CommandArgument);
                    a.Delete(contactoId);
                    CargarLista();
                }
                catch (Exception ex)
                {

                }
            }

            if (e.CommandName == "Editar")
            {
                Response.Redirect("~/FormularioVenta.aspx?id=" + e.CommandArgument.ToString());
            }
        }

    }
}