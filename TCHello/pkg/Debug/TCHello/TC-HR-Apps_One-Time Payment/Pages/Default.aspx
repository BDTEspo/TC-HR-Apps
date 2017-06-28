<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your CSS styles to the following file -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/6.0.0/normalize.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../Content/App.css" />
    <link rel="stylesheet" type="text/css" href="../Content/main.css" />

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Human Resources Application Portal
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div>
        <p id="welcomeuser">
            <!-- The following content will be replaced with the user name when you run the app - see App.js -->
            initializing...
        </p>
    </div>

    <!-- Insert Custom Code Here -->
  <header>
    <div class="container-fluid" id="top-nav">
      <div class="row">
        <div class="col-lg-12 col-md-10 col-sm-12 col-xs-12">
          <img src="../images/logo.png"  class="img-responsive" alt="Teachers College @ Columbia" />
        </div>
      </div>
    </div>
  </header>
  <nav id="nav-bar" class="navigation navbar navbar-default list-inline row" role="navigation">
    <!-- Creates the mini menu when monitor is phone sized -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".hamburger">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <ul class="nav navbar-nav list-inline collapse navbar-collapse hamburger">
      <li><a href="Default.aspx"  ><span class="glyphicon glyphicon-home"></span></a></li>
      <li class="btn-group">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">About Me<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="https://nam.delve.office.com/?u=df7b7106-dc60-4163-b10f-6d3db573c61e&v=profiledetails" style="color:blue">My Office 365 User Profile</a></li>
          <li><a href="#" style="color:blue">Example 2</a></li>
        </ul>
      </li>
      <!-- all dropdown toggles ul and li have to be wrapped in btn group otherwise it'll contintually point to the same thing -->
      <li class="btn-group">
        <a href="team.aspx">My Team</a>
        <!--         <a class="dropdown-toggle" data-toggle="dropdown" href="team.html">My Team<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#" style="color:blue">Organization Chart</a></li>
          <li><a href="#" style="color:blue">Team Details</a></li>
          <li><a href="#" style="color:blue">Performance Reviews</a></li>
        </ul> -->
      </li>
      <li class="btn-group">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Personnel Transactions Outside of My Department<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a data-toggle="modal" href="#uniModal" style="color:blue">One Time Payment</a></li>
          <li><a href="#" style="color:blue">Form 1</a></li>
          <li><a href="#" style="color:blue">Form 2</a></li>
          <li><a href="#" style="color:blue">Form 3</a></li>
        </ul>
      </li>
    </ul>
    <!-- <a data-toggle="modal" href="#myModal" class="btn">Click</a> -->
    <div class="modal fade" id="uniModal">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
            </button>
            <h4 class="modal-title">Employee UNI</h4>
          </div>
          <div class="modal-body">
            <form>
              <div class="form-group">
                <label for="uni-input">Please enter the employee's UNI</label>
                <input type="text" class="form-control" id="uni-input" />
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <a href="toby_info_form.aspx" class="btn btn-primary">Submit</a>
            <a href="#" data-dismiss="modal" class="btn btn-primary">Cancel</a>
          </div>
        </div>
      </div>
    </div>
    <ul class="nav navbar-nav navbar-right list-inline collapse navbar-collapse hamburger">
      <li>
        <a style="background-color:orange" href="https://teacherscollege.pageuppeople.com/journal/">
          <span class="glyphicon glyphicon-plus"></span>
          <span>Performance Journal Entry</span></br>
        </a>
      </li>
      <li class="dropdown">
        <a href="#" data-toggle="dropdown" class="dropdown-toggle">
          <span class="glyphicon glyphicon-user"></span>
          <span>Michael</span><b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#" style="color:blue">Me 1</a></li>
          <li><a href="#" style="color:blue">Me 2</a></li>
          <li><a href="#" style="color:blue">Me 3</a></li>
        </ul>
      </li>
      <li>
        <a href="#"><span class="info glyphicon glyphicon-info-sign"></span></a>
      </li>
    </ul>
  </nav>
  <main>
    <h3>Welcome Michael, you are logged in</h3>
    <!--  list-style:none; removes the bulleting effect of li's -->
    <ul class="boxes" style="list-style:none;">
      <li class="light-blue-box">
        <header>
          <a href="#"><span class="glyphicon glyphicon-leaf white"></span>
          <span class="white">My Profile</span></a>
        </header>
        <article class="body">
          <a href="#">View Profile</a>
        </article>
      </li>
      <br>
      <li class="light-blue-box">
        <header>
          <a href="#"><span class="glyphicon glyphicon-leaf white"></span>
          <span class="white">Recruitment</span></a>
        </header>
        <!-- article is the body of the boxes -->
        <article class="body">
          <a href="https://auth.tc.columbia.edu/cas/login?service=https%3a%2f%2fadmin.dc4.pageuppeople.com%2f%2fgateway%2fDefault.aspx%3fsData%3ds6XnSPNZ88pxFo2z5DI_DUIxXBwGCLdNVBywM0-TWR10hcBlxEqzam2T1o1E9RT2">Administration</a>
        </article>
      </li>
      <br>
      <li class="light-green-box">
        <header>
          <a href="#"><span class="glyphicon glyphicon-leaf white"></span>
          <span class="white">Performance Management</span></a>
        </header>
        <article class="body">
          <a href="https://auth.tc.columbia.edu/cas/login?service=https%3a%2f%2fadmin.dc4.pageuppeople.com%2f%2fgateway%2fDefault.aspx%3fsData%3ds6XnSPNZ88pG0Y1Lz8yahEM8IXp48Jx1fxtZ-SXTRLCzxzFoyLkL-qx5l4Gaja2p">Performance Review</a>
        </article>
      </li>
      <br>
      <!-- <li class="light-green-box">
        <header>
          <a href="#"><span class="glyphicon glyphicon-leaf white"></span>
          <span class="white">Team Performance Reviews</span></a>
        </header>
        <article>
          <ul class="team-performance">
            <li class="btn-group">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Netra Macron<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Performance Review-FY16/17</a>
              </ul>
              </li>
          </ul>
        </article>
        </li> -->
    </ul>
    </main>





</asp:Content>
