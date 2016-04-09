<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clienteform.aspx.cs" Inherits="View.Clienteform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 322px">
    
        Nombre:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Nit:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="insertar" />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    
        <br />
        ID<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="eliminar" />
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
