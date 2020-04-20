<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="EventHead.aspx.cs" Inherits="StudentElectionSystem.WebForm3" %>

<asp:Content ID="Conetent1" ContentPlaceHolderID="CpTitle" runat="server">SES: Events Head</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CpContent" runat="server">
    <!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>SES: Events Head</title>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
    <style>
        @import 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css';
@import 'https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css';
@import 'https://fonts.googleapis.com/css?family=Raleway:100,600';
@import 'https://fonts.googleapis.com/css?family=Open+Sans:300';
html,
body {
  width: 100%;
  height: 100%;
}

body {
  font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-weight: 300;
  color: #999;
  background-color: #fff;
}

h1,
h2,
h3,
h4,
h5,
h6 {
  margin: 0 0 20px 0;
  text-transform: none;
  color: rgba(254, 82, 76, 1);
  font-family: "Raleway", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-weight: 600;
  letter-spacing: 1px;
  line-height: 1.5;
}

/*a:link,
a:active,
a:visited{
  color:rgba(255,255,255,1);
}*/

a:hover{
  color:rgba(255,255,255,0.6);
}

.gray {
  color: #a5a5a5;
}

.team{
  margin:40px;
}

.team-member {
  margin: 15px 0;
  padding: 0;
}

.team-member figure {
  position: relative;
  overflow: hidden;
  padding: 0;
  margin: 0;
}

.team-member figure img {
  min-width: 100%;
}

.team-member figcaption p {
  font-size: 16px;
}

.team-member figcaption ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

.team-member figcaption ul {
  visibility: visible;
  -webkit-transition: all 0.1s ease-in-out;
  -moz-transition: all 0.1s ease-in-out;
  -o-transition: all 0.1s ease-in-out;
  transition: all 0.1s ease-in-out;
}

.team-member figcaption ul li {
  display: inline-block;
  padding: 10px;
}

.team-member h4 {
  margin: 10px 0 0;
  padding: 0;
}

.team-member figcaption {
  padding: 50px;
  color: transparent;
  background-color: transparent;
  position: absolute;
  z-index: 996;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 0;
  overflow: hidden;
  visibility: hidden;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

.team-member figure:hover figcaption {
  visibility: visible;
  color: #fff;
  background: rgba(230, 78, 62, 0.9);
  /* Primary color, can be changed via colors.css */
  
  height: 100%;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

.team-member figure:hover figcaption ul li a:hover {
  color: rgba(49, 49, 49, .97);
}

.team-member figure img {
  -webkit-transform: scale(1) rotate(0) translateY(0);
  -moz-transform: scale(1) rotate(0) translateY(0);
  -o-transform: scale(1) rotate(0) translateY(0);
  -ms-transform: scale(1) rotate(0) translateY(0);
  transform: scale(1) rotate(0) translateY(0);
  -webkit-transition: all 0.4s ease-in-out;
  -moz-transition: all 0.4s ease-in-out;
  -o-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
}

.team-member figure:hover img {
  -webkit-transform: scale(1.1) rotate(1deg) translateY(12px);
  -moz-transform: scale(1.1) rotate(1deg) translateY(12px);
  -o-transform: scale(1.1) rotate(1deg) translateY(12px);
  -ms-transform: scale(1.1) rotate(1deg) translateY(12px);
  transform: scale(1.1) rotate(1deg) translateY(12px);
  -webkit-transition: all 0.4s ease-in-out;
  -moz-transition: all 0.4s ease-in-out;
  -o-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
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
}
.btn + .btn {
  margin-left: 10px;
}

.vote {
  position: relative;
  margin: 0 auto;
  margin-top: 130px;
  width: 100px;
  -webkit-transition: 335ms cubic-bezier(0.4, 0, 0.2, 1) width, 225ms cubic-bezier(0.4, 0, 0.2, 1) color, 335ms cubic-bezier(0.4, 0, 0.2, 1) box-shadow, 225ms cubic-bezier(0.4, 0, 0.2, 1) -webkit-transform 420ms;
  transition: 335ms cubic-bezier(0.4, 0, 0.2, 1) width, 225ms cubic-bezier(0.4, 0, 0.2, 1) color, 335ms cubic-bezier(0.4, 0, 0.2, 1) box-shadow, 225ms cubic-bezier(0.4, 0, 0.2, 1) -webkit-transform 420ms;
  transition: 225ms cubic-bezier(0.4, 0, 0.2, 1) transform 420ms, 335ms cubic-bezier(0.4, 0, 0.2, 1) width, 225ms cubic-bezier(0.4, 0, 0.2, 1) color, 335ms cubic-bezier(0.4, 0, 0.2, 1) box-shadow;
  transition: 225ms cubic-bezier(0.4, 0, 0.2, 1) transform 420ms, 335ms cubic-bezier(0.4, 0, 0.2, 1) width, 225ms cubic-bezier(0.4, 0, 0.2, 1) color, 335ms cubic-bezier(0.4, 0, 0.2, 1) box-shadow, 225ms cubic-bezier(0.4, 0, 0.2, 1) -webkit-transform 420ms;
}
.vote.results-r-in {
  color: transparent !important;
  width: 30px;
  -webkit-transform: scale(0);
          transform: scale(0);
}
.vote .click-voted {
  position: absolute;
  bottom: 100%;
  left: 0;
  width: 100%;
  text-align: center;
  color: #fff;
  -webkit-animation: plusone 555ms cubic-bezier(0.4, 0, 0.2, 1) forwards;
          animation: plusone 555ms cubic-bezier(0.4, 0, 0.2, 1) forwards;
}

    </style>
   

</head>
<body>
<!-- partial:index.partial.html -->
<!-- Our team Section -->
<section id="team" class="team content-section">
  <div class="container">
    <div class="row text-center">
      <div class="col-md-12">
        <h2>Events Head</h2>
        <h3 class="caption gray"></h3>
      </div><!-- /.col-md-12 -->
     <form runat="server">
      <div class="container">
        <div class="row">
            
          <div class="col-md-4">
            <div class="team-member">
              <figure>
                <asp:Image Imageurl="~/Images/lauren-cox.jpg" runat="server" AlternateText="" class="img-responsive"></asp:Image>
                <figcaption>
                  <p><asp:Label ID = "Gpa1" runat="server">GPA: 9.91</asp:Label></p>
                   
                    <p><asp:Label ID ="Extra1" runat="server">Extra-Curriculars: Achievement XYZ</asp:Label></p>
                  
                      <asp:Button ID="BtvCandA" runat="server" Text="Vote" Cssclass="btn vote" OnClick="BtvCandA_Click"/>
                 
                </figcaption>
              </figure>
              <h4>Lauren Cox</h4>
              
            </div><!-- /.team-member-->
          </div><!-- /.col-md-4 -->

          <div class="col-md-4">
            <div class="team-member">
              <figure>
                <asp:Image Imageurl="~/Images/jessie-barnett.jpg" runat="server" AlternateText="" class="img-responsive"></asp:Image>
                <figcaption>
                  <p><asp:Label ID ="Gpa2" runat="server">GPA: 8.8</asp:Label></p>
                    <p><asp:Label ID="Extra2" runat="server">Extra-Curriculars: Achievement ABC</asp:Label></p>
                  
                      <asp:Button ID="BtvCandB" runat="server" Text="Vote" Cssclass="btn vote" OnClick="BtvCandB_Click"/>
                
                </figcaption>
              </figure>
              <h4>Jessie Barnett</h4>
              
            </div><!-- /.team-member-->
          </div><!-- /.col-md-4 -->

          <div class="col-md-4">
            <div class="team-member">
              <figure>
                <asp:Image Imageurl="~/Images/terry-fletcher.jpg" runat="server" AlternateText="" class="img-responsive"></asp:Image>
                <figcaption>
                  <p><asp:Label ID="Gpa3" runat="server">GPA: 8.5</asp:Label></p>
                  <p><asp:Label ID="Extra3" runat="server">Extra-Curriculars: Achievement MN</asp:Label></p>
                  
                      <asp:Button ID="BtvCandC" runat="server" Text="Vote" Cssclass="btn vote" OnClick="BtvCandC_Click"/>
                 
                </figcaption>
              </figure>
              <h4>Terry Fletcher</h4>
              
            </div>
          </div>


        </div>
      </div>
</form>
    </div>
  </div>

</section>    

  
</body>
</html>

</asp:Content>
