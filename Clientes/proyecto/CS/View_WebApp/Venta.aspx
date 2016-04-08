<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Venta.aspx.cs" Inherits="View.Venta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        Fecha<input id="Text1" type="text" /><br />
        Producto<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="producto_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClientesConnectionString %>" SelectCommand="SELECT * FROM [tbl_producto]"></asp:SqlDataSource>
        <input id="Button2" type="button" value="button" /><br />
        Cantidad<input id="Text3" type="text" /><br />
        Cliente<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="cliente_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ClientesConnectionString %>" SelectCommand="SELECT * FROM [tbl_cliente]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <input id="Button1" type="button" value="button" /></div>
    </form>
</body>
</html>
