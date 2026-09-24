<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="xmlTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
 <title>Koosoleku kava</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
 </head>
 <body>
    
    <div>
        <asp:Xml ID="xml1" runat="server" DocumentSource="~/inimesed.xml" TransformSource="~/inimesed1.xslt" />
        <asp:Xml ID="xml2" runat="server" DocumentSource="~/autod.xml" TransformSource="~/autod.xslt" />
        <asp:Xml ID="xml3" runat="server" DocumentSource="~/autod.xml" TransformSource="~/autod_loendamine.xslt" />
        <asp:Xml ID="xml4" runat="server" DocumentSource="~/autod.xml" TransformSource="~/condition.xslt" />
    </div>

    <div>
        <h1>Kuninganna Elizabeth II Sugupuu</h1>
        <asp:Xml ID="xml5" runat="server" DocumentSource="~/sugupuu.xml" TransformSource="~/synniaastad.xslt" />
        <asp:Xml ID="xml6" runat="server" DocumentSource="~/sugupuu.xml" TransformSource="~/kaks_last.xslt" />
        <asp:Xml ID="xml7" runat="server" DocumentSource="~/sugupuu.xml" TransformSource="~/sugupuutabel.xslt" />
       
    </div>

 	<form>
		<input type="text" name="otsing" />
		<br></br>
		<input type="text" name="pikkus" />
		<br></br>

		<input type="submit" />
	</form>
 </body>
</html>

</asp:Content>
