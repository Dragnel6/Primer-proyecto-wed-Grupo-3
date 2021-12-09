<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Primer_proyecto_wed_Grupo_3.Login" %>

<!DOCTYPE html>
<script runat="server">

</script>

<html>
<head>
<title>Ingresar</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tiny Ui Login Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">		<!-- font-awesome icons -->
<!-- //Custom Theme files -->
<!-- web font -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'><!--web font-->
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
<!-- //web font -->
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            color: #FF0000;
        }
    </style>
</head>
<body>
	<form id="form1" runat="server">
	<!-- main -->
	<div class="main-agileits">
		<h1>La pampeña</h1>
		<div class="mainw3-agileinfo">
			<!-- login form -->
			<div class="login-form">  
				<div class="txt-lt"> 	
						<p>Nombre de usuario<asp:TextBox ID="txtUsuario" runat="server" placeholder="Ingresar usuario" required=""></asp:TextBox>
                            </p>
                        <p> 
                        </p>
						&nbsp;<p>Contraseña<asp:TextBox ID="txtContra" runat="server" placeholder=".........." required="" TextMode="Password"></asp:TextBox>
                        </p>
						<div class="txt-center">
                            <label class="anim">
                            <div class="txt-lt">
                                <input type="checkbox" class="checkbox"> Recordar contraseña<span> ?</span> 
						    </div>
						</label> 
					    <div style="text-align: center">
						&nbsp;<asp:Button ID="btIngresar" runat="server" Height="61px" OnClick="btIngresar_Click" Text="Ingresar" Width="458px" />
					 </div>
					&nbsp;<br />
                            <br />
                    <asp:Label ID="lblLogin" runat="server" BackColor="White" CssClass="auto-style3" Font-Size="X-Large" Text="Label"></asp:Label>
                        </div>
                </div> 
				<div class="login-agileits-bottom"> 
					<h6><a href="#">Has olvidado tu contraseña?</a></h6></div>  
				<div class="social-w3lsicon">
					<a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
					<a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a> 
					<a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a> 
					<a href="#" class="social-button drble"><i class="fa fa-dribbble"></i></a> 
					<a href="#" class="social-button be"><i class="fa fa-behance"></i></a> 
					<a href="#" class="social-button in"><i class="fa fa-linkedin"></i></a> 
				</div>  

			</div> 
		</div>	
	</div>	
	<!-- //main -->
	<!-- copyright -->
	<div class="-agile">
		<table class="auto-style2">
            <tr>
                <td class="txt-center">
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="Sql_Login" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT [Usuario], [Contrasena] FROM [ingreso]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <p class="auto-style1">&nbsp;</p>
        <p class="auto-style1">© Grupo 3 primer proyecto web </p>
	</div>
	<!-- //copyright -->
	<!-- js -->  
	<script src="js/superplaceholder.js"></script>
	<script>
	superplaceholder({
        el: txtUsuario,
			sentences: [ 'john.smith11', 'lorem.ipsum55', 'example@name2' ],
			options: {
				loop: true,
				startOnFocus: false
			}
		})
		superplaceholder({
            el: txtContra,
			sentences: [ '.........', '.....', '.....' ],
			options: {
				loop: true,
				startOnFocus: false 
			}
		})
    </script>
	<!-- //js --> 
    </form>
</body>
</html>
