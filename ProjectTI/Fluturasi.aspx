<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fluturasi.aspx.cs" Inherits="ProjectTI.Views.Stergere" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<%--<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="LabelCautareF" runat="server" Text="Cautati dupa un anumit angajat:"></asp:Label>
    <asp:TextBox ID="TextBoxCautareF" runat="server" placeholder="Scrieti aici numele"></asp:TextBox>
    <asp:Button ID="ButtonCautareF" runat="server" Text="Cauta" OnClick="ButtonCautareF_Click" Height="26px" Width="56px" />
    
    &nbsp;&nbsp;
    <asp:Button ID="RenuntaCautareF" runat="server" Text="Renunta" OnClick="RenuntaCautareF_Click" />
    <br />
    <br />
    <br />
    
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1162px" Height="728px">

        <LocalReport ReportPath="Fluturasi.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSetFluturasi" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="ProjectTI.AngajatiFDataSetTableAdapters.DateAngajatiTableAdapter"></asp:ObjectDataSource>

</asp:Content>
