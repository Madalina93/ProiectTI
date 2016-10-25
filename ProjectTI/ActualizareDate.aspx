<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActualizareDate.aspx.cs" Inherits="ProjectTI.Views.ActualizareDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:Button ID="afiseaza" runat="server" Text="Afiseaza toti angajatii" OnClick="afiseazaAngajati_Click" />
                    <%-- OnClientClick = "Confirm()"--%>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="NrCrt" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="NrCrt" HeaderText="NrCrt" ReadOnly="True" SortExpression="NrCrt" />
                            <asp:BoundField DataField="Poza" HeaderText="Poza" SortExpression="Poza" />
                            <asp:BoundField DataField="Nume" HeaderText="Nume" SortExpression="Nume" />
                            <asp:BoundField DataField="Prenume" HeaderText="Prenume" SortExpression="Prenume" />
                            <asp:BoundField DataField="Functie" HeaderText="Functie" SortExpression="Functie" />
                            <asp:BoundField DataField="SalarNegociat" HeaderText="SalarNegociat" SortExpression="SalarNegociat" />
                            <asp:BoundField DataField="SalarRealizat" HeaderText="SalarRealizat" SortExpression="SalarRealizat" />
                            <asp:BoundField DataField="Vechime" HeaderText="Vechime" SortExpression="Vechime" />
                            <asp:BoundField DataField="Spor" HeaderText="Spor" SortExpression="Spor" />
                            <asp:BoundField DataField="PremiiBrute" HeaderText="PremiiBrute" SortExpression="PremiiBrute" />
                            <asp:BoundField DataField="Compensatie" HeaderText="Compensatie" SortExpression="Compensatie" />
                            <asp:BoundField DataField="TotalBrut" HeaderText="TotalBrut" SortExpression="TotalBrut" />
                            <asp:BoundField DataField="BrutImpozabil" HeaderText="BrutImpozabil" SortExpression="BrutImpozabil" />
                            <asp:BoundField DataField="Impozit" HeaderText="Impozit" SortExpression="Impozit" />
                            <asp:BoundField DataField="CAS" HeaderText="CAS" SortExpression="CAS" />
                            <asp:BoundField DataField="Somaj" HeaderText="Somaj" SortExpression="Somaj" />
                            <asp:BoundField DataField="Sanat" HeaderText="Sanat" SortExpression="Sanat" />
                            <asp:BoundField DataField="Avans" HeaderText="Avans" SortExpression="Avans" />
                            <asp:BoundField DataField="Retineri" HeaderText="Retineri" SortExpression="Retineri" />
                            <asp:BoundField DataField="RestPlata" HeaderText="RestPlata" SortExpression="RestPlata" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AngajatiConnectionString1 %>" DeleteCommand="DELETE FROM [DateAngajati] WHERE [NrCrt] = @NrCrt" InsertCommand="INSERT INTO [DateAngajati] ([Poza], [Nume], [Prenume], [Functie], [SalarNegociat], [SalarRealizat], [Vechime], [Spor], [PremiiBrute], [Compensatie], [TotalBrut], [BrutImpozabil], [Impozit], [CAS], [Somaj], [Sanat], [Avans], [Retineri], [RestPlata]) VALUES (@Poza, @Nume, @Prenume, @Functie, @SalarNegociat, @SalarRealizat, @Vechime, @Spor, @PremiiBrute, @Compensatie, @TotalBrut, @BrutImpozabil, @Impozit, @CAS, @Somaj, @Sanat, @Avans, @Retineri, @RestPlata)" ProviderName="<%$ ConnectionStrings:AngajatiConnectionString1.ProviderName %>" SelectCommand="SELECT [NrCrt], [Poza], [Nume], [Prenume], [Functie], [SalarNegociat], [SalarRealizat], [Vechime], [Spor], [PremiiBrute], [Compensatie], [TotalBrut], [BrutImpozabil], [Impozit], [CAS], [Somaj], [Sanat], [Avans], [Retineri], [RestPlata] FROM [DateAngajati]" UpdateCommand="UPDATE [DateAngajati] SET [Poza] = @Poza, [Nume] = @Nume, [Prenume] = @Prenume, [Functie] = @Functie, [SalarNegociat] = @SalarNegociat, [SalarRealizat] = @SalarRealizat, [Vechime] = @Vechime, [Spor] = @Spor, [PremiiBrute] = @PremiiBrute, [Compensatie] = @Compensatie, [TotalBrut] = @TotalBrut, [BrutImpozabil] = @BrutImpozabil, [Impozit] = @Impozit, [CAS] = @CAS, [Somaj] = @Somaj, [Sanat] = @Sanat, [Avans] = @Avans, [Retineri] = @Retineri, [RestPlata] = @RestPlata WHERE [NrCrt] = @NrCrt">
                        <DeleteParameters>
                            <asp:Parameter Name="NrCrt" Type="Int32" />
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
                            <asp:Parameter Name="NrCrt" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </td>
            </tr>
        </table>
    </div>
</asp:Content>
