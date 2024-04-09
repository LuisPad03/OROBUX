<%@ Page Title="" Language="C#" MasterPageFile="~/orobux/MasterPage.master" AutoEventWireup="true" CodeFile="Test4.aspx.cs" Inherits="orobux_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
<div class="container">
   
    
        <div>
            <br />
            <br /> <h1> Perfil Cognitivo</h1> <br />
            <h4> Inteligencia Emocional (IE)	</h4> <br />
        </div>
        <form class="form-horizontal">    
                <table class="table table-bordered ">
                            <tr>
                                <td width="83%"align="center" font-size="medium" ><b>Reactivos</b>  </td>
                                <td align="center">
                                    1
                                <td  align="center">
                                    2
                                <td  align="center">
                                    3
                                <td  align="center" >
                                    4
                                <td align="center" >
                                    5
                            </tr>
                        </table>
                <asp:Repeater ID="Cuestionario5" runat="server" OnItemDataBound="Cuestionario_ItemDataBound" OnItemCommand="Cuestionario5_ItemCommand"> 
                    <HeaderTemplate>
                                    <div class="card-title">  <%# Eval("Titulo") %> </div>
                    </HeaderTemplate>
                    <ItemTemplate> <!-- tabla de preguntas -->
                        <table class="table table-bordered">
                            <tr>
                                <td><asp:Label runat="server" ID="id_pregunta" Text="-"></asp:Label> </td> 
                                <td width="90%"> <%# Eval("Pregunta") %></td>
                                <td align="center" width="2%">
                                    <asp:RadioButton ID="chk_nunca" groupname="preguntas"  runat="server" CssClass="custom-radio" data-toggle="tooltip" data-placement="top" title="nunca" /></td>
                                <td  align="center" width="2%">
                                    <asp:RadioButton ID="chk_pocasveces" groupname="preguntas" runat="server"  CssClass="custom-radio" data-toggle="tooltip" data-placement="top" title="pocas veces" /></td>
                                <td  align="center" width="2%">
                                    <asp:RadioButton ID="chk_frecuentemente" groupname="preguntas"  runat="server"  CssClass="custom-radio" data-toggle="tooltip" data-placement="top" title="frecuentemente"/></td>
                                <td  align="center" width="2%">
                                    <asp:RadioButton ID="chk_muchasveces" groupname="preguntas"  runat="server" CssClass="custom-radio" data-toggle="tooltip" data-placement="top" title="muchas veces"/></td>
                                <td align="center" width="2%">
                                    <asp:RadioButton ID="chk_siempre" groupname="preguntas" runat="server" CssClass="custom-radio" data-toggle="tooltip" data-placement="top" title="siempre"/></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:Repeater>
            <asp:Repeater ID="Cuestionario3" runat="server" OnItemDataBound="Cuestionario_ItemDataBound" Visible="false"> 
                    <HeaderTemplate>
                                    <div class="card-title">  <%# Eval("Titulo") %> </div>
                    </HeaderTemplate>
                    <ItemTemplate> <!-- tabla de preguntas -->
                        <table class="table table-bordered">
                            <tr>
                                <td><asp:Label runat="server" ID="id_pregunta" Text="-"></asp:Label> </td> 
                                <td width="90%"> <%# Eval("Pregunta") %></td>
                                <td align="center" width="2%">
                                    <asp:RadioButton ID="chk_A" groupname="preguntas"  runat="server" CssClass="custom-radio" data-togle="tooltip" data-placement="top" title="A"/></td>
                                <td  align="center" width="2%">
                                    <asp:RadioButton ID="chk_B" groupname="preguntas" runat="server"  CssClass="custom-radio" data-togle="tooltip" data-placement="top" title="B" /></td>
                                <td  align="center" width="2%">
                                    <asp:RadioButton ID="chk_C" groupname="preguntas"  runat="server"  CssClass="custom-radio" data-togle="tooltip" data-placement="top" title="C"/></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:Repeater>
        </form>
        <asp:Button  runat="server" ID="btn_Guardar" CssClass="btn btn-success" Text="Guardar" OnClick="btn_Guardar_Click" />
    <footer> <br />
    </footer>
   </div>
   
    
</asp:Content>

