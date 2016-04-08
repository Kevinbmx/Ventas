<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="View.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="cliente_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="cliente_id" HeaderText="cliente_id" InsertVisible="False" ReadOnly="True" SortExpression="cliente_id" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="nit" HeaderText="nit" SortExpression="nit" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClientesConnectionString %>" DeleteCommand="DELETE FROM [tbl_cliente] WHERE [cliente_id] = @cliente_id" InsertCommand="INSERT INTO [tbl_cliente] ([nombre], [nit]) VALUES (@nombre, @nit)" SelectCommand="SELECT * FROM [tbl_cliente]" UpdateCommand="UPDATE [tbl_cliente] SET [nombre] = @nombre, [nit] = @nit WHERE [cliente_id] = @cliente_id">
            <DeleteParameters>
                <asp:Parameter Name="cliente_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="nit" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="nit" Type="Int32" />
                <asp:Parameter Name="cliente_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            
    </div>
    </form>
</body>
</html>
