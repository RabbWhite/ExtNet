<%@ Page Language="C#" %>

<%@ Register assembly="Ext.Net" namespace="Ext.Net" tagprefix="ext" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LoadMask during Page_Load - Ext.NET Examples</title>
    <link href="../../../../resources/css/examples.css" rel="stylesheet" type="text/css" />    
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />
        
        <h1>Configure LoadMask for AutoLoad</h1>
        
        <p>Demonstrates how to configure a LoadMask to render while an external page is loading.</p>
                
        <ext:Window 
            ID="Window1" 
            runat="server" 
            Width="500"
            Height="470" 
            Title="Example">
            <AutoLoad 
                Url="http://www.ext.net/" 
                Mode="IFrame" 
                ShowMask="true" 
                MaskMsg="Custom Loading Message..." 
                />
            <TopBar>
                <ext:Toolbar runat="server">
                    <Items>
                        <ext:ToolbarFill />
                        <ext:Button runat="server" Text="Load Google" Icon="Application">
                            <Listeners>
                                <Click Handler="#{Window1}.load('http://www.google.com/');" />
                            </Listeners>
                        </ext:Button>
                        
                        <ext:Button runat="server" Text="Refresh" Icon="ArrowRotateClockwise">
                            <Listeners>
                                <Click Handler="#{Window1}.reload();" />
                            </Listeners>
                        </ext:Button>
                    </Items>
                </ext:Toolbar>
            </TopBar>
        </ext:Window>
    </form>
</body>
</html>