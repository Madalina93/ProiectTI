<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjectTI._Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Bine ati venit!</h3>
</asp:Content>--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <p>Aplicatia pune la dispozitie urmatoarele functionalitati:</p>
    <p>
        In meniul "Introducere date" se pot adauga angajati si de asemenea se pot vizualiza intregii angajati, avand posibilitatea de a face cateva editari.
        <asp:LinkButton ID="LinkButtonAdaugare" runat="server" OnClick="LinkButtonAdaugare_Click">Adaugare</asp:LinkButton>
        permine adaugarea in baza de date a unui angajat nou. Salvarea acestuia se efectueaza in momentul apasarii butonului "Adauga angajat".
"Actualizare Date" permite vizualizarea sub forma tabelara a tuturor angajatilor.
    </p>
    <p>
        Se apasa butonul
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Afiseaza toti angajatii</asp:LinkButton>
        pentru o afisare tabelara. In partea dreapta a tabelului se gaseste coloana "Optiuni" ce permine, pe rand, Editarea unui angajat, Salvarea editarii sau anularea acesteia  cat si Stergerea angajatului.
    </p>
    <br />


    <p>
        Se poate cauta un angajat dupa nume, prenume sau chiar si dupa nume si dupa prenume. Se introduce numele angajatului dorit si se apasa butonul "Cauta angajatul".
     De asemenea se poate realiza o marire pentru toti anagajatii firmei. Se introduce suma in campul respectiv si se apasa butonul "Aplica". Toti angajatii vor beneficia de suma introdusa.
    </p>
    <br />
    <p>
        Rapoarte sunt de doua categorii:
        -> Stat de plat, ce afiseaza tabelar totii angajatii firmei
        ->Fluturasi, ce afiseaza toti angajatii si permite cautarea dupa nume a unui anumit angajat
        Cele doua tipuri de rapoarte pot fi scoase la imprimanta cat si salvate in format pdf.
    </p>
    <br />
    <p>
        Meniul procente stocheaza date referitoare la CAS, Sanatate..., tabela prevazuta cu o parola.
        Se permite modificarea acestor date insa este necesara introducerea parolei pentru a avea acces la tabela. 
    </p>
</asp:Content>