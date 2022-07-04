<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminDeneyimler.aspx.cs" Inherits="AdminDeneyimler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="Form1" runat="server">
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>BAŞLIK</th>
            <th>ALT BAŞLIK</th>
            <th>AÇIKLAMA</th>
            <th>TARİH</th>   
            <th>İşlemler</th>   
        
        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("ID") %></td>
                        <td><%#Eval("BASLIK") %></td>
                        <td><%#Eval("ALTBASLIK") %></td>
                        <td><%#Eval("ACIKLAMA") %></td>
                        <td><%#Eval("TARIH") %></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<% #"AdminDeneyimSil.aspx" + Eval("ID") %>>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Güncelle</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<% #"AdminDeneyimGuncelle.aspx" + Eval("ID") %>>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Sil</asp:HyperLink>

                        </td>
                       
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
         
        </tbody>       
    
    </table>
   
    
        <asp:HyperLink NavigateUrl="~/AdminDeneyimEkle.aspx" ID="HyperLink3" runat="server">Deneyim Ekle</asp:HyperLink>
       </form >
 
</asp:Content>

