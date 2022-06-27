<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="IngresarLectura.aspx.cs" Inherits="MedidoresASP.IngresarLectura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-dark text-white">
                    <h3>Ingresar Lectura</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="codigoMedidor">Código Medidor</label>
                        <asp:DropDownList runat="server" ID="codigoMedidorDropdown" CssClass="form-control mt-2 mb-2"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="fechaLectura">Fecha de Lectura</label>
                        <asp:Calendar runat="server" ID="fechaLectura" CssClass="mt-2 mb-2"></asp:Calendar>
                    </div>
                    <div class="form-group row">
                        <label for="horaLectura">Hora de Lectura</label>
                        <div class="col-2">
                            <asp:TextBox runat="server" ID="horaLectura" CssClass="form-control mt-2 mb-2" PlaceHolder="Hora"></asp:TextBox>
                            <asp:RangeValidator ForeColor="Red" runat="server" ID="rangoHora" ControlToValidate="horaLectura" Type="Integer" MinimumValue="00" MaximumValue="23" ErrorMessage="00 a 23"></asp:RangeValidator>
                        </div>
                        <div class="col-2">
                            <asp:TextBox runat="server" ID="minutosLectura" CssClass="form-control mt-2 mb-2" PlaceHolder="Minutos"></asp:TextBox>
                            <asp:RangeValidator ForeColor="Red" runat="server" ID="rangoMinutos" ControlToValidate="minutosLectura" Type="Integer" MinimumValue="00" MaximumValue="59" ErrorMessage="00 a 59"></asp:RangeValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="valorConsumo">Consumo Energético (kWh)</label>
                        <asp:TextBox runat="server" ID="valorConsumo" CssClass="form-control mt-2 mb-2"></asp:TextBox>
                        <asp:RangeValidator ForeColor="Red" runat="server" ID="validarConsumo" ControlToValidate="valorConsumo" Type="Integer" MinimumValue="0" MaximumValue="600" ErrorMessage="Debe estar dentro del rango de 0 a 600.</br>"></asp:RangeValidator>
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
