<%@ Master Language="C#" AutoEventWireup="true" CodeBehind="Html5Boilerplate.master.cs" Inherits="$rootnamespace$.Html5Boilerplate" %>
<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head runat="server">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title><asp:ContentPlaceHolder ID="TitleContent" runat="server" /></title>
	<meta name="description" content="">
	<meta name="author" content="">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="shortcut icon" href="~/favicon.ico">
	<link rel="apple-touch-icon" href="~/apple-touch-icon.png">
	<link rel="stylesheet" href="~/Styles/style.css?v=2">
    <link rel="stylesheet" media="handheld" href="~/Styles/handheld.css?v=2">
	<script src="~/Scripts/libs/modernizr-1.7.min.js" type="text/javascript"></script>
    <asp:ContentPlaceHolder ID="HeadContent" runat="server">
    </asp:ContentPlaceHolder>
</head>
<body>
    <form runat="server">
	<div id="container">
		<header>
            <div id="title">
                <h1>My MVC Application</h1>
            </div>

            <div id="logindisplay">
                <asp:LoginView ID="HeadLoginView" runat="server" EnableViewState="false">
                    <AnonymousTemplate>
                        [ <a href="~/Account/Login.aspx" ID="HeadLoginStatus" runat="server">Log In</a> ]
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                        Welcome <span class="bold"><asp:LoginName ID="HeadLoginName" runat="server" /></span>!
                        [ <asp:LoginStatus ID="HeadLoginStatus" runat="server" LogoutAction="Redirect" LogoutText="Log Out" LogoutPageUrl="~/"/> ]
                    </LoggedInTemplate>
                </asp:LoginView>
            </div>

            <div class="clearfix hideSkiplink">
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home"/>
                        <asp:MenuItem NavigateUrl="~/About.aspx" Text="About"/>
                    </Items>
                </asp:Menu>
            </div>
		</header>

		<div id="main" role="main" class="clearfix">
        <asp:ContentPlaceHolder ID="MainContent" runat="server">
        
        </asp:ContentPlaceHolder>
		</div>

		<footer>

		</footer>
	</div>
    </form>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js" type="text/javascript"></script>
	<script type="text/javascript"> !window.jQuery && document.write(unescape('%3Cscript src="<%= ResolveUrl("~/Scripts/libs/jquery-1.5.1.min.js") %>"%3E%3C/script%3E'))</script>
	<script src="<%= ResolveUrl("~/Scripts/plugins.js") %>" type="text/javascript"></script>
	<script src="<%= ResolveUrl("~/Scripts/script.js") %>" type="text/javascript"></script>
	<!--[if lt IE 7 ]>
	<script src="<%= ResolveUrl("~/Scripts/libs/dd_belatedpng.js") %>"></script>
	<script> DD_belatedPNG.fix('img, .png_bg');</script>
	<![endif]-->
	<script type="text/javascript">
	    var _gaq = [['_setAccount', 'UA-XXXXX-X'], ['_trackPageview']]; // Change UA-XXXXX-X to be your site's ID
	    (function (d, t) {
	        var g = d.createElement(t), s = d.getElementsByTagName(t)[0]; g.async = 1;
	        g.src = ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js';
	        s.parentNode.insertBefore(g, s)
	    } (document, 'script'));
	</script>
</body>
</html>