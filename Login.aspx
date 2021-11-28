<!DOCTYPE html>
<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
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
            width: 100%;
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
				<div class="login-agileits-top"> 	
						<p>Nombre de usuario </p>
						<input id="input1" Runat="server" type="text" class="name" name="username" placeholder="Ingresar usuario" required=""/>
						<p>Contraseña</p>
						<input id="input2" runat="server" type="text" name="Contraseña" placeholder=".........." required=""/>  
						<label class="anim">
							<input type="checkbox" class="checkbox"> Recordar contraseña<span> ?</span> 
						</label>   
						<input type="submit" runat="server" value="Ingresar" id="btIngresar" onclick="btIngresar"> 
					 
					</div> 
				<div class="login-agileits-bottom"> 
					<h6><a href="#">As olvidado tu contraseña?</a></h6>
				</div>  
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
		<p>© Grupo 3 primer proyecto web </p>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlLogin" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT [Usuario], [Contrasena] FROM [ingreso]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
	</div>
	<!-- //copyright -->
	<!-- js -->  
	<script src="js/superplaceholder.js"></script>
	<script>
	superplaceholder({
			el: input1,
			sentences: [ 'john.smith11', 'lorem.ipsum55', 'example@name2' ],
			options: {
				loop: true,
				startOnFocus: false
			}
		})
		superplaceholder({
			el: input2,
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
