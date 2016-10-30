<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActualizareDate.aspx.cs" Inherits="ProjectTI.Views.ActualizareDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="afiseaza" runat="server" Text="Afiseaza toti angajatii" OnClick="afiseazaAngajati_Click" />
    <div>
        <asp:Repeater ID="afiseazaTotiAng" runat="server">
            <HeaderTemplate>
                <table border="1">
                    <tr style="background-color: #38da06; color: aliceblue">
                        <th style="width:5%">Nr. crt.</th>
                        <th style="width:10%">Nume</th>
                        <th style="width:13%">Prenume</th>
                        <th style="width:13%">Functie</th>
                        <th style="width:8%">Salar negociat</th>
                        <th style="width:8%">Salar Realizat</th>
                        <th style="width:8%">Vechime</th>
                        <th style="width:8%">Spor</th>
                        <th style="width:8%">Premii brute</th>
                        <th style="width:3%">Compensatie</th>
                        <th style="width:15%">Total brut</th>
                        <th style="width:10%">Brut impozabil</th>
                        <th style="width:10%">Impozit</th>
                        <th style="width:10%">CAS</th>
                        <th style="width:10%">Somaj</th>
                        <th style="width:10%">Sanat</th>
                        <th style="width:10%">Avans</th>
                        <th style="width:10%">Retineri</th>
                        <th style="width:25%">Rest plata</th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# DataBinder.Eval(Container,"DataItem.NrCrt") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Nume") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Prenume") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Functie") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.SalarNegociat") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.SalarRealizat") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Vechime") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Spor") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.PremiiBrute") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Compensatie") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.TotalBrut") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.BrutImpozabil") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Impozit") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.CAS") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Somaj") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Sanat") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Avans") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Retineri") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.RestPlata") %></td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr style="background-color:#00ff90; ">
                    <td><%# DataBinder.Eval(Container,"DataItem.NrCrt") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Nume") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Prenume") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Functie") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.SalarNegociat") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.SalarRealizat") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Vechime") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Spor") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.PremiiBrute") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Compensatie") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.TotalBrut") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.BrutImpozabil") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Impozit") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.CAS") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Somaj") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Sanat") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Avans") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Retineri") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.RestPlata") %></td>
                </tr>
            </AlternatingItemTemplate>
        </asp:Repeater>
        <div>
            Numarul total de angajati este: 
            <asp:Label ID="totalcount" runat="server"></asp:Label>
        </div>
    </div>

</asp:Content>
