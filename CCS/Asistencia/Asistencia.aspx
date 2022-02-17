<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Masterpages/Content.Master" CodeBehind="Asistencia.aspx.vb" Inherits="CCS.Asistencia" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Register src=".././Agente.ascx" tagname="Agente" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 48px;
        }
        .auto-style3 {
            margin-left: 0px;
            width: 1022px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="site_content">
    <div class="content">

    <asp:ToolkitScriptManager runat="server"></asp:ToolkitScriptManager>
  
    <h1>Control de Asistencia</h1>
    <br />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

    <div class="fuentes" style="margin-left:3%;">
        <table class="tablaresumen">
            <tr >
                <td >Fecha:</td>
                 <td >&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td >
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" Width="20px" ImageUrl="~/Images/Arrows-Left-Circular-icon.png" ImageAlign="Middle"/>
                    <asp:TextBox style="text-align:center;" ID="Fecha" runat="server" Height="15px" ReadOnly="True" CssClass="textboxes"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" Width="20px" ImageUrl="~/Images/Arrows-Right-Circular-icon.png" ImageAlign="Middle"/>
                </td>
            </tr>
        </table>
    </div>

    <br />

    <div class="fuentes" style="margin-left:3%;">

        <table class="tablaresumen">

            <tr >
                <td ><asp:Label ID="Label1" runat="server" Text="Asistencias: " Width="110px" CssClass="tablaresumen"></asp:Label></td>
                <td  ><asp:Label ID="Label9" runat="server" Text="0" Width="50px" CssClass="tablaresumen"></asp:Label></td>
                <td ><asp:Label ID="Label2" runat="server" Text="Faltas: " Width="110px" CssClass="tablaresumen"></asp:Label></td>
                <td  ><asp:Label ID="Label11" runat="server" Text="0" Width="50px" CssClass="tablaresumen"></asp:Label></td>
                <td ><asp:Label ID="Label3" runat="server" Text="Descansos: " Width="110px" CssClass="tablaresumen"></asp:Label></td>
                <td  ><asp:Label ID="Label13" runat="server" Text="0" Width="50px" CssClass="tablaresumen"></asp:Label></td>
                <td ><asp:Label ID="Label4" runat="server" Text="Incapacidades: " Width="110px" CssClass="tablaresumen"></asp:Label></td>
                <td  ><asp:Label ID="Label15" runat="server" Text="0" Width="50px" CssClass="tablaresumen"></asp:Label></td>
                <td ><asp:Label ID="Label23" runat="server" Text="Vacaciones: " Width="110px" CssClass="tablaresumen"></asp:Label></td>
                <td  ><asp:Label ID="Label24" runat="server" Text="0" Width="50px" CssClass="tablaresumen"></asp:Label></td>
            </tr>

            <tr >
                <td ><asp:Label ID="Label19" runat="server" Text="Faltas Justificadas: " Width="110px" CssClass="tablaresumen"></asp:Label></td>
                <td  ><asp:Label ID="Label20" runat="server" Text="0" Width="50px" CssClass="tablaresumen"></asp:Label></td>
                <td ><asp:Label ID="Label25" runat="server" Text="Descanso Laborado: " Width="110px" CssClass="tablaresumen"></asp:Label></td>
                <td class="auto-style2"  ><asp:Label ID="Label26" runat="server" Text="0" Width="50px" CssClass="tablaresumen"></asp:Label></td>
                <td ><asp:Label ID="Label5" runat="server" Text="PCG: " Width="110px" CssClass="tablaresumen"></asp:Label></td>
                <td class="auto-style2"  ><asp:Label ID="Label10" runat="server" Text="0" Width="50px" CssClass="tablaresumen"></asp:Label></td>
                <td ><asp:Label ID="Label6" runat="server" Text="PSG: " Width="110px" CssClass="tablaresumen"></asp:Label></td>
                <td class="auto-style2"  ><asp:Label ID="Label12" runat="server" Text="0" Width="50px" CssClass="tablaresumen"></asp:Label></td>
                <td ><asp:Label ID="Label8" runat="server" Text="Vacios: " Width="110px" CssClass="tablaresumen"></asp:Label></td>
                <td class="auto-style2"  ><asp:Label ID="Label16" runat="server" Text="0" Width="50px" CssClass="tablaresumen"></asp:Label></td>

            </tr>


            <Table />

    </div>         
            

 

 

         
             

             
         
            
                                <br />
                                <div class="fuentes" style="margin-left:3%;">
                                    <Table class="tablaresumen">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label21" runat="server" CssClass="tablaresumen" Text="Horas Extra: " Width="150px"></asp:Label>
                                            </td>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label22" runat="server" CssClass="tablaresumen" Text="0" Width="50px"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="Button3" runat="server" CssClass="Button" Font-Bold="True" Font-Size="13px" Height="22px" style="margin-left:500px;" Text="Calcular" Width="85" />
                                            </td>
                                        </tr>
                                    </Table>
                                </div>
                                <br />
                                <div id="TablaAsistencia" runat="server" style="width:960px; margin-left:1%;" visible="True">

                                </div>
                                <br />
                                <div id="Botones" runat="server" style="width:915px; margin-left:6.5%;">
                                    <asp:Button ID="Button2" runat="server" CssClass="Button" Font-Bold="True" Font-Size="13px" Height="22px" style="margin-right:650px;" Text="Limpiar" Width="85" />
                                    <asp:Button ID="Button1" runat="server" CssClass="Button" Font-Bold="True" Font-Size="13px" Height="22px" Text="Guardar" Width="85" />
                                </div>
                                <br />
          
            
            
        



             
    </ContentTemplate>
    </asp:UpdatePanel>

    </div>
 </div>
</asp:Content>

