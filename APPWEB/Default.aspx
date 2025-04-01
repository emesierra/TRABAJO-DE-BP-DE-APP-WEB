<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="APPWEB_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="font-family: 'Arial Black'">Simulador de Pagos de Crédito</h1>

        <div class="form-group">
            <label for="txtMonto">Monto total del crédito:</label>
            <asp:TextBox ID="txtMonto" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtInteres">Interés mensual (%):</label>
            <asp:TextBox ID="txtInteres" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="ddlMeses">Plazo (meses):</label>
            <asp:DropDownList ID="ddlMeses" runat="server" CssClass="form-control">
                <asp:ListItem Value="12">12 meses</asp:ListItem>
                <asp:ListItem Value="24">24 meses</asp:ListItem>
                <asp:ListItem Value="36">36 meses</asp:ListItem>
                <asp:ListItem Value="48">48 meses</asp:ListItem>
                <asp:ListItem Value="60">60 meses</asp:ListItem>
                <asp:ListItem Value="72">72 meses</asp:ListItem>
            </asp:DropDownList>
        </div>

        <asp:Button ID="btnCalcular" runat="server" Text="Calcular Cuotas" OnClick="btnCalcular_Click" CssClass="btn btn-primary" />

        <hr />

        <asp:Panel ID="pnlResultados" runat="server" Visible="false">
            <h2>Resultados de la Simulación</h2>
            <p><strong>Cuota mensual estimada:</strong> 
                <asp:Label ID="lblCuotaMensual" runat="server" Font-Bold="true"></asp:Label>
            </p>

            <asp:GridView ID="gvAmortizacion" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Mes" HeaderText="Mes" />
                    <asp:BoundField DataField="Cuota" HeaderText="Cuota" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="Interes" HeaderText="Interés" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="Capital" HeaderText="Capital" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="Saldo" HeaderText="Saldo" DataFormatString="{0:C}" />
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </form>
</body>
</html>