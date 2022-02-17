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
                                    <uc1:Agente ID="Agente1" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente2" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente3" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente4" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente5" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente6" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente7" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente8" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente9" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente10" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente11" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente12" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente13" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente14" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente15" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente16" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente17" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente18" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente19" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente20" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente21" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente22" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente23" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente24" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente25" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente26" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente27" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente28" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente29" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente30" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente31" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente32" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente33" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente34" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente35" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente36" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente37" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente38" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente39" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente40" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente41" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente42" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente43" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente44" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente45" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente46" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente47" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente48" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente49" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente50" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente51" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente52" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente53" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente54" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente55" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente56" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente57" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente58" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente59" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente60" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente61" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente62" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente63" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente64" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente65" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente66" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente67" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente68" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente69" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente70" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente71" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente72" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente73" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente74" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente75" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente76" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente77" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente78" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente79" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente80" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente81" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente82" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente83" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente84" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente85" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente86" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente87" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente88" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente89" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente90" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente91" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente92" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente93" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente94" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente95" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente96" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente97" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente98" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente99" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente100" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente101" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente102" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente103" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente104" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente105" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente106" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente107" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente108" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente109" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente110" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente111" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente112" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente113" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente114" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente115" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente116" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente117" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente118" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente119" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente120" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente121" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente122" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente123" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente124" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente125" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente126" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente127" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente128" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente129" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente130" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente131" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente132" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente133" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente134" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente135" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente136" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente137" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente138" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente139" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente140" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente141" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente142" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente143" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente144" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente145" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente146" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente147" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente148" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente149" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente150" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente151" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente152" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente153" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente154" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente155" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente156" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente157" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente158" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente159" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente160" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente161" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente162" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente163" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente164" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente165" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente166" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente167" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente168" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente169" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente170" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente171" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente172" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente173" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente174" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente175" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente176" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente177" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente178" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente179" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente180" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente181" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente182" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente183" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente184" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente185" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente186" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente187" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente188" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente189" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente190" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente191" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente192" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente193" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente194" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente195" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente196" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente197" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente198" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente199" runat="server" visible="false" />
                                    <uc1:Agente ID="Agente200" runat="server" visible="false" />

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

