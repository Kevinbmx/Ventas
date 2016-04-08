<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="View.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            
        <section class="row">
        <div class="col-md-12">

            <asp:HyperLink runat="server" NavigateUrl="~/FormularioContacto.aspx"
                CssClass="btn btn-primary">
                Crear Contacto
            </asp:HyperLink>
            <br /><br />

            <asp:GridView ID="ContactosGridView" runat="server"
                CssClass="table" GridLines="None"
                AutoGenerateColumns="false"
                OnRowCommand="ContactosGridView_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Editar">
                        <ItemTemplate>
                            <asp:LinkButton ID="EditButton" runat="server" CommandName="Editar"
                                CommandArgument='<%# Eval("venta_id") %>'>
                                <i class="glyphicon glyphicon-pencil"></i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Eliminar">
                        <ItemTemplate>
                            <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Eliminar"
                                OnClientClick="return confirm('Esta seguro que desea eliminar el Contacto seleccionado?')"
                                CommandArgument='<%# Eval("venta_id") %>'>
                                <i class="glyphicon glyphicon-remove"></i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="fecha" HeaderText="Fecha" />
                    <asp:BoundField DataField="total" HeaderText="Total" />
                    
                </Columns>
            </asp:GridView>

        </div>
    </section>
            
    </div>
    </form>
</body>
</html>
