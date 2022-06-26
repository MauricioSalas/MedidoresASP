<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerMedidores.aspx.cs" Inherits="MedidoresASP.VerMedidores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-danger text-white">
                    <h3>Ver Medidores</h3>
                </div>
                <div class="card-body">
                    <asp:GridView CssClass="table table-hover table-bordered" AutoGenerateColumns="false" runat="server" OnRowCommand="grillaMedidores_RowCommand" ID="grillaMedidores">
                        <Columns>
                            <asp:BoundField DataField="" HeaderText=""/>
                            <asp:BoundField DataField="" HeaderText=""/>
                            <asp:BoundField DataField="" HeaderText=""/>
                            <asp:BoundField DataField="" HeaderText=""/>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button CommandName="" CommandArgument="" runat="server" CssClass="btn btn-danger" Text="Eliminar"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
