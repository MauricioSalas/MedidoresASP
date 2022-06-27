<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarLecturas.aspx.cs" Inherits="MedidoresASP.MostrarLecturas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-danger text-white">
                    <h3>Mostrar Lecturas</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="codigoMedidorDropdown">Seleccionar Medidor</label>
                        <asp:DropDownList runat="server" ID="codigoMedidorDropdown" CssClass="form-control mt-2 mb-2" AutoPostBack="true" OnSelectedIndexChanged="codigoMedidorDropdown_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                    <asp:GridView CssClass="table table-hover table-bordered" AutoGenerateColumns="false" runat="server" OnRowCommand="grillaLecturas_RowCommand" ID="grillaLecturas">
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Número de Serie Medidor"/>
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo de Medidor"/>
                            <asp:BoundField DataField="FechaUnix" HeaderText="Fecha y Hora de Lectura" />
                            <asp:BoundField DataField="kWh" HeaderText="Consumo Energético" />
                        </Columns>
                    </asp:GridView>
                    <div class="mensaje">
                        <asp:Label ID="mensajesLabel" runat="server" CssClass=""></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
