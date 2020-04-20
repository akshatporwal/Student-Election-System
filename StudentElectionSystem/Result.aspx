<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="StudentElectionSystem.Result" %>

 <!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>SES: Results</title>
  <style>
      @import url(https://fonts.googleapis.com/css?family=Roboto:400,700);

body {
  background-color: #fff;
  font-family: "Raleway", "Helvetica Neue", Helvetica, Arial, sans-serif;
}
.btn {
  -webkit-user-select: none;
  -moz-user-select: none;
   -ms-user-select: none;
       user-select: none;
  cursor: pointer;
 background: #808080;
  border-radius: 15px;
  line-height: 30px;
  height: 30px;
  -webkit-transition: 335ms cubic-bezier(0.4, 0, 0.2, 1) all;
  transition: 335ms cubic-bezier(0.4, 0, 0.2, 1) all;
  outline: none;
  border: none;
  padding: 0 10px;
  left:50%;
}



h1{
    font-family: "Raleway", "Helvetica Neue", Helvetica, Arial, sans-serif;
}

.contact-cards {
  width: 924px;
 margin: 5vh auto;
  background-color:#ECECEC;
  display: block;
  padding: 20px;
 /* border-radius: 25px;*/
}
.contact-cards::after {
  content: '';
  display: block;
  clear: both;
}
.contact-cards h1 {
  text-align: center;
}

.contact-card {
  background-color:#ECECEC;
  width: 100%;
  max-width: 268px;
  height: 240px;
  border-radius: 5px;
  overflow: hidden;
  box-shadow: 0 0 0 0 blue;
  -webkit-transition: all 0.667s ease;
  transition: all 0.667s ease;
}
.contact-card .image-container {
  /*padding: 15px;*/
}
.contact-card .image-container img.profile-image {
  /*border-radius: 50%;*/
  display: block;
  margin: 0 auto;
  width: 268px;
  height: 199px;
}
.contact-card .lower-content {
  position: relative;
  top: 0;
  height: 240px;
  background-color: #f5f5f5;
  padding: 10px;
  -webkit-transition: all 0.667s ease;
  transition: all 0.667s ease;
  text-align: center;
  box-shadow: 0 0 5px 2px rgba(255, 255, 255, 0);
}
.contact-card .lower-content .basic-info h4 {
  margin: 0;
  font-size: 18px;
}
.contact-card .lower-content .contact-information {
  margin-top: 175px;
  -webkit-transition: all 0.667s ease;
  transition: all 0.667s ease;
}
.contact-card .lower-content .contact-information .contact-method {
  margin: 0;
  /*padding: 10px;*/
  border-bottom: solid 1px #dbdbdb;
}
.contact-card .lower-content .contact-information .contact-method label {
  font-weight: bold;
  margin-bottom: 3px;
  display: block;
}
.contact-card:hover {
  box-shadow: 0 0 5px 2px #ff8762;
}
.contact-card:hover .lower-content {
  top: -199px;
}
.contact-card:hover .lower-content .contact-information {
  margin-top: 15px;
}

.contact-card {
  float: left;
  margin: 10px 20px;
}

  </style>

</head>
<body>
<form runat="server">
<div class="contact-cards">
    <p style="text-align:center">Thank You for your valuable vote.</p>
    <br />
    <h1>Leading Candidates</h1>
  <br />
  <div class="contact-card">
    <div class="image-container">
      <asp:Image ID="imgSP" runat="server" class="profile-image" ></asp:Image>
    </div>
    <div class="lower-content">
      <div class="basic-info">
        <h4 class="contact-name">Student President</h4>
        <br />
      </div>
      <div class="contact-information">
        <div class="contact-method">
          <label><asp:Label ID="lbcandSP" runat="server"></asp:Label></label>
          <p style="font-size:small">Candidate Name</p>
        </div>
          <br />
        <div class="contact-method">
          <label><asp:Label ID="lbvoteSP" runat="server"></asp:Label></label>
          <p style="font-size:small">Votes</p>
        </div>
      </div>
    </div>
  </div>

  <div class="contact-card">
    <div class="image-container">
      <asp:Image ID="imgST" runat="server" class="profile-image" ></asp:Image>
    </div>
    <div class="lower-content">
      <div class="basic-info">
        <h4 class="contact-name">Student Treasurer</h4>
        <br />
      </div>
      <div class="contact-information">
        <div class="contact-method">
          <label><asp:Label ID="lbcandST" runat="server"></asp:Label></label>
          <p style="font-size:small">Candidate Name</p>
        </div>
          <br />
        <div class="contact-method">
          <label><asp:Label ID="lbvoteST" runat="server"></asp:Label></label>
          <p style="font-size:small">Votes</p>
        </div>
      </div>
    </div>
  </div>

  <div class="contact-card">
    <div class="image-container">
      <asp:Image ID="imgEH" runat="server" class="profile-image" ></asp:Image>
    </div>
    <div class="lower-content">
      <div class="basic-info">
        <h4 class="contact-name">Events Head</h4>
        <br />
      </div>
      <div class="contact-information">
        <div class="contact-method">
          <label><asp:Label ID="lbcandEH" runat="server"></asp:Label></label>
          <p style="font-size:small">Candidate Name</p>
        </div>
          <br />
        <div class="contact-method">
          <label><asp:Label ID="lbvoteEH" runat="server"></asp:Label></label>
          <p style="font-size:small">Votes</p>
        </div>
      </div>
    </div>
  </div>
  
</div>

 <center><asp:Button ID="btLogout" runat="server" Text="Logout" CssClass="btn vote" ForeColor="White" OnClick="BtLogout_Click"/></center>
    </form>
</body>
</html>
