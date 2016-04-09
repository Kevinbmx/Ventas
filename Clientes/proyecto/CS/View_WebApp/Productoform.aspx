<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productoform.aspx.cs" Inherits="View.Productoform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Nombre:<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 27px" Width="286px"></asp:TextBox>
        <br/>
        <br/>
        Precio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 7px" Width="282px"></asp:TextBox>
        <br/>
        <br/>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" />
        <br/>
        <br/>
        <asp:GridView ID="GridView1" runat="server" Width="373px">
        </asp:GridView>
        <br/>
        ID:<asp:TextBox ID="TextBox4" runat="server" style="margin-left: 27px" Width="286px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Eliminar" OnClick="Button2_Click" />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
