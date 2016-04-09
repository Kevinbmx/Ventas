<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="View.Detalle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ventaId<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="venta_id" DataValueField="venta_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ClientesConnectionString %>" SelectCommand="SELECT * FROM [tbl_venta]"></asp:SqlDataSource>
        <br />
        precio<asp:TextBox ID="txtprecio" runat="server"></asp:TextBox>
        <br />
        cantidad<asp:TextBox ID="txtcatidad" runat="server"></asp:TextBox>
        <br />
        subtotal<asp:TextBox ID="txtsub" runat="server"></asp:TextBox>
        <br />
        producto<asp:DropDownList ID="droplisproducto" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="producto_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClientesConnectionString %>" SelectCommand="SELECT * FROM [tbl_producto]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ClientesConnectionString %>" SelectCommand="SELECT * FROM [tbl_detalleVenta]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    
    </div>
    </form>
</body>
</html>
