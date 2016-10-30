<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Adaugare.aspx.cs" Inherits="ProjectTI.Views.Adaugare" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
      <div class="Angajati">
       <table>
          
           <tr>
               <td>Nume </td>
               <td>
                   <asp:TextBox ID="nume" runat="server"></asp:TextBox>
               </td>
           </tr>

            <tr>
               <td>Prenume</td>
               <td>
                   <asp:TextBox ID="prenume" runat="server"></asp:TextBox>
               </td>
           </tr>

           <tr>
               <td>Functie </td>
               <td>
                   <asp:TextBox ID="functie" runat="server"></asp:TextBox>
               </td>
           </tr>

           <tr>
               <td>Salar Negociat: </td>
               <td>
                   <asp:TextBox ID="salarN" runat="server"></asp:TextBox>
               </td>
           </tr>

           <tr>
               <td>Salar Realizat(%) </td>
               <td>
                   <asp:TextBox ID="salarR" runat="server" Text="100" ></asp:TextBox>
               </td>
           </tr>

            <tr>
               <td>Vechime(%) </td>
               <td>
                   <asp:TextBox ID="vechime" runat="server" Text="0"></asp:TextBox>
               </td>
           </tr>

           <tr>
               <td>Spor(%) </td>
               <td>
                   <asp:TextBox ID="spor" runat="server" Text="0"></asp:TextBox>
               </td>
           </tr>

           <tr>
               <td>Premii brute: </td>
               <td>
                   <asp:TextBox ID="premii" runat="server" Text="0"></asp:TextBox>
               </td>
           </tr>

           <tr>
               <td>Compensatie </td>
               <td>
                   <asp:TextBox ID="compensatie" runat="server" Text="0"></asp:TextBox>
               </td>
           </tr>

           <tr>
               <td>Avans </td>
               <td>
                   <asp:TextBox ID="avans" runat="server" Text="0"></asp:TextBox>
               </td>
           </tr>

            <tr>
               <td>Retineri </td>
               <td>
                   <asp:TextBox ID="retineri" runat="server" Text="0"></asp:TextBox>
               </td>
           </tr>

           <tr>
               <td>
                   <asp:Button ID="adauga" runat="server"  Text="Adauga angajat" OnClick="adauga_Click"  />   <%-- OnClientClick = "Confirm()"--%>
               </td>
           </tr>
       </table>
   </div>
       
    <%-- <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to save data?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>--%>

    <asp:SqlDataSource runat="server">

    </asp:SqlDataSource>
</asp:Content>
