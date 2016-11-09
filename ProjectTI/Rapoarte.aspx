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
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="9pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="116%"  Height="683px" style="margin-right: 0px">
        <LocalReport ReportPath="StatDePlata.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet" />
            </DataSources>
        </LocalReport>
       
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="ProjectTI.AngajatiDataSetTableAdapters.DateAngajatiTableAdapter"></asp:ObjectDataSource>
       
</asp:Content>
