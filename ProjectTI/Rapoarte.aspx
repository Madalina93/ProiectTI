<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rapoarte.aspx.cs" Inherits="ProjectTI.Contact" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- <div>--%>
        <%--<asp:Label  runat="server" ID="FirstDate"> De la data de:</asp:Label>
        <asp:Label runat="server" Style="margin-left:260px; margin-top:-300px;"  ID="SecondDate"> Pana la data de:</asp:Label>
        <asp:Calendar runat="server" ID="FirstCalendar" OnSelectionChanged="FirstCalendar_SelectionChanged"></asp:Calendar>
        <asp:Calendar  runat="server" Style="margin-left:350px; margin-top: -195px;"  ID="SecondCalendar" OnSelectionChanged="SecondCalendar_SelectionChanged"></asp:Calendar>
   
    <br />
    <asp:TextBox ID="TextBoxFirstCalendar" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBoxSecondCalendar" runat="server" Style="margin-left:350px; "></asp:TextBox>
    <br />--%>
        <%--<asp:Button runat="server" Style="margin-top:20px" OnClick="BtnArata_Click" Text="Arata" Width="112px" />--%>
   
    <br />
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="9pt" 
        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt"
        Width="116%"  Height="683px" style="margin-right: 0px">

        <LocalReport ReportPath="StatDePlata.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet" />
            </DataSources>
        </LocalReport>
       
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" 
        TypeName="ProjectTI.AngajatiDataSetTableAdapters.DateAngajatiTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_NrCrt" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Poza" Type="String" />
            <asp:Parameter Name="Nume" Type="String" />
            <asp:Parameter Name="Prenume" Type="String" />
            <asp:Parameter Name="Functie" Type="String" />
            <asp:Parameter Name="SalarNegociat" Type="Int32" />
            <asp:Parameter Name="SalarRealizat" Type="Int32" />
            <asp:Parameter Name="Vechime" Type="Int32" />
            <asp:Parameter Name="Spor" Type="Int32" />
            <asp:Parameter Name="PremiiBrute" Type="Int32" />
            <asp:Parameter Name="Compensatie" Type="Int32" />
            <asp:Parameter Name="TotalBrut" Type="Int32" />
            <asp:Parameter Name="BrutImpozabil" Type="Int32" />
            <asp:Parameter Name="Impozit" Type="Int32" />
            <asp:Parameter Name="CAS" Type="Int32" />
            <asp:Parameter Name="Somaj" Type="Int32" />
            <asp:Parameter Name="Sanat" Type="Int32" />
            <asp:Parameter Name="Avans" Type="Int32" />
            <asp:Parameter Name="Retineri" Type="Int32" />
            <asp:Parameter Name="RestPlata" Type="Int32" />
            <asp:Parameter Name="Data" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Poza" Type="String" />
            <asp:Parameter Name="Nume" Type="String" />
            <asp:Parameter Name="Prenume" Type="String" />
            <asp:Parameter Name="Functie" Type="String" />
            <asp:Parameter Name="SalarNegociat" Type="Int32" />
            <asp:Parameter Name="SalarRealizat" Type="Int32" />
            <asp:Parameter Name="Vechime" Type="Int32" />
            <asp:Parameter Name="Spor" Type="Int32" />
            <asp:Parameter Name="PremiiBrute" Type="Int32" />
            <asp:Parameter Name="Compensatie" Type="Int32" />
            <asp:Parameter Name="TotalBrut" Type="Int32" />
            <asp:Parameter Name="BrutImpozabil" Type="Int32" />
            <asp:Parameter Name="Impozit" Type="Int32" />
            <asp:Parameter Name="CAS" Type="Int32" />
            <asp:Parameter Name="Somaj" Type="Int32" />
            <asp:Parameter Name="Sanat" Type="Int32" />
            <asp:Parameter Name="Avans" Type="Int32" />
            <asp:Parameter Name="Retineri" Type="Int32" />
            <asp:Parameter Name="RestPlata" Type="Int32" />
            <asp:Parameter Name="Data" Type="DateTime" />
            <asp:Parameter Name="Original_NrCrt" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
       
</asp:Content>
