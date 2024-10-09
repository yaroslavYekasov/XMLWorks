<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Autod1._Default" %>

<!DOCTYPE html>
<html>
    <head>
        <title>xml ja xslt andmete kuvamine</title>
    </head>
    <body>
        <div>
            <asp:Xml runat="server"
                DocumentSource="~/Reisid/reisimine.xml"
                TransformSource="~/Reisid/reisimine.xslt"/>
        </div>
    </body>
</html>
