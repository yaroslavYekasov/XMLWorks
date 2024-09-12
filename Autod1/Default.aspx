<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Autod1._Default" %>

<!DOCTYPE html>
<html>
    <head>
        <title>xml ja xslt andmete kuvamine</title>
    </head>
    <body>
        <h1>xml ja xslt andmete kuvamine</h1>
        <br />
        <div>
            <asp:Xml runat="server"
                DocumentSource="~/reisimine.xml"
                TransformSource="~/reisimine.xslt"/>
        </div>
    </body>
</html>
