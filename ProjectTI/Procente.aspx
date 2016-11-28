
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
    <asp:Button ID="RenuntaP" runat="server" Text="Renunta" Type="Reset" OnClick="RenuntaProcente_Click" OnClientClick='javascript:return confirm("Sunteti sigur ca doriti sa renuntati la modificari?")' Visible="false"/>


    <asp:Label ID="lblPass" runat="server" Text="Label">Pentru a avea acces la tabela Procente, introduceti parola:</asp:Label>
    <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" Text="Continuati" OnClick="Continuati_Click"/>
    

   

</asp:Content>

