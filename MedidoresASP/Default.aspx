<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MedidoresASP.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-dark text-white">
                    <h3>Ingresar Medidor</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="codigoMedidor">Código Medidor</label>
                        <asp:TextBox MaxLength="4" ID="codigoMedidor" CssClass="form-control mt-2 mb-2" runat="server"></asp:TextBox>
                        <label for="tipoMedidorDropdown">Tipo de Medidor</label>
                        <asp:DropDownList runat="server" ID="tipoMedidorDropdown" CssClass="form-control mt-2 mb-2">
                            <asp:ListItem Value="1" Text="Inteligente"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Estado Sólido"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Vatios-Hora"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ForeColor="Red" runat="server" ID="validarCodigo" ControlToValidate="codigoMedidor" ErrorMessage="Campo requerido.<br/>"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ForeColor="Red" runat="server" ID="validarCodigoInteger" ControlToValidate="codigoMedidor" ErrorMessage="Ingresar sólo números.<br/>" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                        <asp:RangeValidator ForeColor="Red" runat="server" ID="rangoCodigo" ControlToValidate="codigoMedidor" Type="Integer" MinimumValue="3000" MaximumValue="9999" ErrorMessage="Ingresar código entre 3000 y 9999.<br/>"></asp:RangeValidator>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="agregarButton" OnClick="agregarButton_Click" Text="Agregar" CssClass="btn btn-primary mt-2 mb-2"/>
                    </div>
                    <div class="mensaje">
                        <asp:Label ID="mensajesLabel" runat="server" CssClass=""></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
