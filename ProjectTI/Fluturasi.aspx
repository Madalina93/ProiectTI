<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fluturasi.aspx.cs" Inherits="ProjectTI.Views.Stergere" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1162px">
        <localreport reportpath="Fluturasi.rdlc">
            <datasources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSetFluturasi" />
            </datasources>
        </localreport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="ProjectTI.AngajatiFDataSetTableAdapters.DateAngajatiTableAdapter"></asp:ObjectDataSource>

</asp:Content>
