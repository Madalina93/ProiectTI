
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Procente.aspx.cs" Inherits="ProjectTI.Procente" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >
       
    <asp:Table ID="TableProcente" runat="server" style="width: 60%;" Visible="false"> 
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>CAS</asp:TableHeaderCell>
            <asp:TableHeaderCell>Sanatate</asp:TableHeaderCell>
            <asp:TableHeaderCell>Somaj</asp:TableHeaderCell>
            <asp:TableHeaderCell>Impozit</asp:TableHeaderCell>
            <asp:TableHeaderCell>Parola</asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="cas" ></asp:TextBox>
            </asp:TableCell>
             <asp:TableCell>
                <asp:TextBox runat="server" ID="sanatate"></asp:TextBox>
            </asp:TableCell>
             <asp:TableCell>
                <asp:TextBox runat="server" ID="somaj"></asp:TextBox>
            </asp:TableCell>
             <asp:TableCell>
                <asp:TextBox runat="server" ID="impozit"></asp:TextBox>
            </asp:TableCell>
             <asp:TableCell>
                <asp:TextBox runat="server" ID="parola" TextMode="Password"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    

    <asp:Button ID="SalveazaP" runat="server" Text="Salveaza" OnClick="SalveazaProcente_Click" Visible="false"/>
    <asp:Button ID="RenuntaP" runat="server" Text="Renunta" OnClick="RenuntaProcente_Click" Visible="false"/>


    <asp:Label ID="lblPass" runat="server" Text="Label">Pentru a avea acces la tabela Procente, introduceti parola:</asp:Label>
    <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" Text="Continuati" OnClick="Continuati_Click"/>
    
<%--     <style type="text/css">
        .Background
        {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }
        .Popup
        {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
            width: 400px;
            height: 350px;
        }
        .lbl
        {
            font-size:16px;
            font-style:italic;
            font-weight:bold;
        }
    </style>

    
<asp:Label runat="server">Pentru a avea acces la modificarea tabelului Procente, apasati </asp:Label>
    <asp:LinkButton runat="server" ID="LinkButton1">aici</asp:LinkButton>
<%--<asp:Button ID="Button1" runat="server" Text="Fill Form in Popup" />--%>

<%--<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="LinkButton1"
    CancelControlID="Button2" BackgroundCssClass="Background">
</cc1:ModalPopupExtender>
<asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" style = "display:none">
    <iframe style=" width: 350px; height: 300px;" id="irm1" src="PopUpProcente.aspx" runat="server"></iframe>
   <br/>
   
    <asp:Button ID="Button2" runat="server" Text="Renunta" />
     
</asp:Panel>--%>
   

</asp:Content>

