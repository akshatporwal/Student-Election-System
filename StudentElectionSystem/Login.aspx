<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentElectionSystem.Login" %>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Student Election System</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<style>
    @import url(https://fonts.googleapis.com/css?family=Montserrat);

* {margin: 0; padding: 0;}

html {
	height: 100%;
	
	background: 
		linear-gradient(rgba(196, 102, 0, 0.6), rgba(155, 89, 182, 0.6));
}

body {
	font-family: montserrat, arial, verdana;
}

.text-danger {
    color: #FA5050 !important;
}

#msform {
	width: 400px;
	margin: 50px auto;
	text-align: center;
	position: relative;
}
#msform fieldset {
	background: white;
	border: 0 none;
	border-radius: 3px;
	box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
	padding: 20px 30px;
	box-sizing: border-box;
	width: 80%;
	margin: 0 10%;
	
	position: relative;
}
#msform fieldset:not(:first-of-type) {
	display: none;
}

#msform input, #msform textarea {
	padding: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	margin-bottom: 10px;
	width: 100%;
	box-sizing: border-box;
	font-family: montserrat;
	color: #2C3E50;
	font-size: 13px;
}

#msform .action-button {
	width: 100px;
	background: #27AE60;
	font-weight: bold;
	color: white;
	border: 0 none;
	border-radius: 1px;
	cursor: pointer;
	padding: 10px 5px;
	margin: 10px 5px;
}
#msform .action-button:hover, #msform .action-button:focus {
	box-shadow: 0 0 0 2px white, 0 0 0 3px #27AE60;
}
/*headings*/
.fs-title {
	font-size: 15px;
	text-transform: uppercase;
	color: #2C3E50;
	margin-bottom: 10px;
}
.fs-subtitle {
	font-weight: normal;
	font-size: 13px;
	color: #666;
	margin-bottom: 20px;
}


</style>

</head>
<body>


    <form id="msform" runat="server">
  
  <ul>
    <li><br /> </li>
    <li><br />   </li>
    <li>   <br /></li>
      <li><br /></li>
  </ul>
        

  <fieldset>
    <h2 class="fs-title">Voter Information</h2>
    <h3 class="fs-subtitle">Please fill-in your details</h3>
    &nbsp;
      <asp:TextBox ID="Name" runat="server" onclick="$(this).val('');">Name</asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*name required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="Name"></asp:RequiredFieldValidator>
      <asp:TextBox ID="Enroll" runat="server" onclick="$(this).val('');">Enrollment Number</asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*enrollment number required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="Enroll"></asp:RequiredFieldValidator>
      <asp:TextBox ID="Semester" runat="server" onclick="$(this).val('');">Semester</asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*semester required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="Semester"></asp:RequiredFieldValidator>
      <br />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Continue" CssClass="next action-button" OnClick="Button1_Click" />
&nbsp;</fieldset>
  
    </form>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>

</body>
</html>
