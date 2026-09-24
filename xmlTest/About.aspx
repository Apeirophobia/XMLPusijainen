<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="xmlTest.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <asp:xml ID="xml3" runat="server" DocumentSource="~/sugupuu.xml" TransformSource="~/sugupuutabel.xslt"/>
        <br />
        Otsitav tekst: <asp:TextBox ID="kast1" runat="server" /><br />        
        Miinimumpikkus: <asp:TextBox ID="kast2" runat="server" /><br />        
        <asp:Button runat="server" text="Sisesta" />
    </main>
</asp:Content>
