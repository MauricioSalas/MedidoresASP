<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerMedidores.aspx.cs" Inherits="MedidoresASP.VerMedidores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-danger text-white">
                    <h3>Ver Medidores</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="tipoMedidorDropdown">Seleccionar Tipo de Medidor</label>
                        <asp:DropDownList runat="server" ID="tipoMedidorDropdown" CssClass="form-control mt-2 mb-2" AutoPostBack="true" OnSelectedIndexChanged="tipoMedidorDropdown_SelectedIndexChanged">
                            <asp:ListItem Value="1" Text="Inteligente"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Estado Sólido"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Vatios-Hora"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:GridView CssClass="table table-hover table-bordered" AutoGenerateColumns="false" runat="server" OnRowCommand="grillaMedidores_RowCommand" ID="grillaMedidores">
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Número de Serie Medidor"/>
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo de Medidor"/>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
