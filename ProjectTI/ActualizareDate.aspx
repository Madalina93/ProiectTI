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
                     <td><asp:Label ID="lblNrCrt" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.NrCrt") %>' /></td>

                    <td><asp:Label ID="lblNume" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Nume") %>' />
                        <asp:TextBox ID="txtNume" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Nume") %>' Visible="false"/>
                    </td>

                    <td><asp:Label ID="lblPrenume" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Prenume") %>'/>
                        <asp:TextBox ID="txtPrenume" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Prenume") %>' Visible="false"/>
                    </td>

                     <td><asp:Label ID="lblFunctie" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Functie") %>'/>
                        <asp:TextBox ID="txtFunctie" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Functie") %>' Visible="false"/>
                    </td>

                    <td><asp:Label ID="lblSalarN" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.SalarNegociat") %>'/>
                        <asp:TextBox ID="txtSalarN" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.SalarNegociat") %>' Visible="false"/>
                    </td>

                     <td><asp:Label ID="lblSalarR" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.SalarRealizat") %>'/>
                        <asp:TextBox ID="txtSalarR" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.SalarRealizat") %>' Visible="false"/>
                    </td>

                     <td><asp:Label ID="lblVechime" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Vechime") %>'/>
                        <asp:TextBox ID="txtVechime" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Vechime") %>' Visible="false"/>
                    </td>

                     <td><asp:Label ID="lblSpor" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Spor") %>'/>
                        <asp:TextBox ID="txtSpor" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Spor") %>' Visible="false"/>
                    </td>

                     <td><asp:Label ID="lblPremii" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.PremiiBrute") %>'/>
                        <asp:TextBox ID="txtPremii" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.PremiiBrute") %>' Visible="false"/>
                    </td>

                     <td><asp:Label ID="lblCompensatie" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Compensatie") %>'/>
                        <asp:TextBox ID="txtCompensatie" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Compensatie") %>' Visible="false"/>
                    </td>
                    
                    <td><%# DataBinder.Eval(Container,"DataItem.TotalBrut") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.BrutImpozabil") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Impozit") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.CAS") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Somaj") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Sanat") %></td>


                    <td><asp:Label ID="lblAvans" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Avans") %>'/>
                        <asp:TextBox ID="txtAvans" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Avans") %>' Visible="false"/>
                    </td>

                    <td><asp:Label ID="lblRetineri" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Retineri") %>'/>
                        <asp:TextBox ID="txtRetineri" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Retineri") %>' Visible="false"/>
                    </td>

                    <td><%# DataBinder.Eval(Container,"DataItem.RestPlata") %></td>
                    <td>
                        <asp:LinkButton ID="lnkEdit" runat="server" OnClick="OnEdit" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "NrCrt") %>'>Editeaza</asp:LinkButton>
                        <asp:LinkButton Visible="false" ID="lnkUpdate" runat="server" OnClick="OnUpdate" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "NrCrt") %>'>Salveaza</asp:LinkButton>
                        <asp:LinkButton Visible="false" ID="lnkCancel" runat="server" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "NrCrt") %>'>Anuleaza</asp:LinkButton>
                        <asp:LinkButton ID="lnkDelete" runat="server" OnClick="OnDelete" OnClientClick='javascript:return confirm("Sunteti siguri ca doriti sa stergeti?")'
                        CommandArgument='<%# DataBinder.Eval(Container.DataItem, "NrCrt") %>'>Stergere</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr style="background-color:#00ff90; ">
                   
                    <td><asp:Label ID="lblNrCrt" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.NrCrt") %>' /></td>

                    <td><asp:Label ID="lblNume" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Nume") %>' />
                        <asp:TextBox ID="txtNume" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Nume") %>' Visible="false"/>
                    </td>

                    <td><asp:Label ID="lblPrenume" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Prenume") %>'/>
                        <asp:TextBox ID="txtPrenume" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Prenume") %>' Visible="false"/>
                    </td>

                     <td><asp:Label ID="lblFunctie" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Functie") %>'/>
                        <asp:TextBox ID="txtFunctie" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Functie") %>' Visible="false"/>
                    </td>

                    <td><asp:Label ID="lblSalarN" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.SalarNegociat") %>'/>
                        <asp:TextBox ID="txtSalarN" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.SalarNegociat") %>' Visible="false"/>
                    </td>

                     <td><asp:Label ID="lblSalarR" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.SalarRealizat") %>'/>
                        <asp:TextBox ID="txtSalarR" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.SalarRealizat") %>' Visible="false"/>
                    </td>

                     <td><asp:Label ID="lblVechime" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Vechime") %>'/>
                        <asp:TextBox ID="txtVechime" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Vechime") %>' Visible="false"/>
                    </td>

                     <td><asp:Label ID="lblSpor" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Spor") %>'/>
                        <asp:TextBox ID="txtSpor" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Spor") %>' Visible="false"/>
                    </td>

                     <td><asp:Label ID="lblPremii" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.PremiiBrute") %>'/>
                        <asp:TextBox ID="txtPremii" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.PremiiBrute") %>' Visible="false"/>
                    </td>

                     <td><asp:Label ID="lblCompensatie" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Compensatie") %>'/>
                        <asp:TextBox ID="txtCompensatie" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Compensatie") %>' Visible="false"/>
                    </td>
                    
                    <td><%# DataBinder.Eval(Container,"DataItem.TotalBrut") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.BrutImpozabil") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Impozit") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.CAS") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Somaj") %></td>
                    <td><%# DataBinder.Eval(Container,"DataItem.Sanat") %></td>


                    <td><asp:Label ID="lblAvans" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Avans") %>'/>
                        <asp:TextBox ID="txtAvans" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Avans") %>' Visible="false"/>
                    </td>

                    <td><asp:Label ID="lblRetineri" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Retineri") %>'/>
                        <asp:TextBox ID="txtRetineri" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Retineri") %>' Visible="false"/>
                    </td>

                    <td><%# DataBinder.Eval(Container,"DataItem.RestPlata") %></td>
                    <td>
                        <asp:LinkButton ID="lnkEdit" runat="server" OnClick="OnEdit" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "NrCrt") %>'>Editeaza</asp:LinkButton>
                        <asp:LinkButton Visible="false" ID="lnkUpdate" runat="server" OnClick="OnUpdate" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "NrCrt") %>'>Salveaza</asp:LinkButton>
                        <asp:LinkButton Visible="false" ID="lnkCancel" runat="server" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "NrCrt") %>'>Anuleaza</asp:LinkButton>
                        <asp:LinkButton ID="lnkDelete" runat="server" OnClick="OnDelete" OnClientClick='javascript:return confirm("Sunteti siguri ca doriti sa stergeti?")'
                        CommandArgument='<%# DataBinder.Eval(Container.DataItem, "NrCrt") %>'>Stergere</asp:LinkButton>
                    </td>
                </tr>
            </AlternatingItemTemplate>
        </asp:Repeater>
        <div>
            Numarul total de angajati este: 
            <asp:Label ID="totalcount" runat="server"></asp:Label>
        </div>
    </div>

</asp:Content>
