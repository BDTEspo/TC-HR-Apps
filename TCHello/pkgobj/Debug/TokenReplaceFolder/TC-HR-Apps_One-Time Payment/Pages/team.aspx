<%@ Page language="C#" MasterPageFile="~masterurl/default.master" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />

    <!-- Add your CSS styles to the following file -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/6.0.0/normalize.min.css" />
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../Content/main.css" />
    <link rel="stylesheet" type="text/css" href="../Content/team.css" />

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    My Team
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="full" Title="loc:full" />
    
    <div>
        <p id="welcomeuser">
            <!-- The following content will be replaced with the user name when you run the app - see App.js -->
            initializing...
        </p>
    </div>

    <header>
      <div class="container-fluid" id="top-nav">
      <div class="row">
        <div class="col-lg-12 col-md-10 col-sm-12 col-xs-12">
          <img src="../Images/logo.png" class="img-responsive" alt="Teachers College" />
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
      <li><a href="index.html"><span class="glyphicon glyphicon-home"></span></a></li>
      <li class="btn-group">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">About Me<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#" style="color:blue">Example 1</a></li>
          <li><a href="#" style="color:blue">Example 2</a></li>
        </ul>
      </li>
      <!-- all dropdown toggles ul and li have to be wrapped in btn group otherwise it'll contintually point to the same thing -->
      <li class="btn-group">
        <a href="team.aspx">My Team</a>
        <!--             <a class="dropdown-toggle" data-toggle="dropdown" href="team.html">My Team<span class="caret"></span></a>
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
    <h3>My Team</h3>
    <div class="org-team-container">
      <br>
      <div class="all-the-cards">
        <div id="1" class="card">
          <img class="card-img" src="../Images/user.png" alt="User Photo">
          <div class="card-block">
            <div class="pull-right dropdown btn-group dropdown-for-my-team-forms">
              <button type="button" class="dropdown-toggle otp" data-toggle="dropdown">Personnel Transactions</a>
                <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="#">Leave Management</a></li>
                <li><a href="#">Reappointments</a></li>
                <li><a href="#">Supplemental Appointments</a></li>
                <li><a href="#">Promotions/Salary Adjustments/Job Changes</a></li>
              </ul>
            </div>
            <p class="card-text">
              <b>Regional Manager</b>
              <!-- putting btn-group in the same class as .dropdown will keep the menu aligned underneath the button -->
              <p><b>Name:</b> Michael Scott</p>
          </div>
        </div>
        <div class="kids card-1-kids">
          <div class="card" id="2">
            <!-- <div class="vertical_line"></div> -->
            <img class="card-img" src="../Images/user.png">
            <div class="card-block">
              <div class="pull-right dropdown btn-group dropdown-for-my-team-forms">
                <button type="button" class="pull-right dropdown-toggle otp" data-toggle="dropdown">Personnel Transactions</a>
                  <span class="caret"></span></button>
                <ul class="dropdown-menu">
                  <li><a href="jim_info_form.aspx">One Time Payment</a></li>
                  <li><a href="#">Leave Management</a></li>
                  <li><a href="#">Reappointments</a></li>
                  <li><a href="#">Supplemental Appointments</a></li>
                  <li><a href="#">Promotions/Salary Adjustments/Job Changes</a></li>
                </ul>
              </div>
              <p class="card-text">
                <b>Assistant Regional Manager</b>
                <!--               <button type="button" class="pull-right otp">
                <a href="OTPForm.aspx">One Time Payment</a>
              </button> -->
              </p>
              <p><b>Name: </b>Jim Halpert</p>
              <!-- href tells the collapseables what id/class to target -->
              <button type="button" data-toggle="collapse" href=".kids.card-2" aria-expanded="false" aria-controls="collapseExample">
                View Jim's Team
              </button>
            </div>
          </div>
          <div class="kids card-2 collapse">
            <div id="4" class="card">
              <img class="card-img" src="../Images/user.png" alt="User Photo" alt="User Photo">
              <div class="card-block">
                <div class="pull-right dropdown btn-group dropdown-for-my-team-forms">
                  <button type="button" class="pull-right dropdown-toggle otp" data-toggle="dropdown">Personnel Transactions</a>
                    <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="OTPForm.aspx">One Time Payment</a></li>
                    <li><a href="#">Leave Management</a></li>
                    <li><a href="#">Reappointments</a></li>
                    <li><a href="#">Supplemental Appointments</a></li>
                    <li><a href="#">Promotions/Salary Adjustments/Job Changes</a></li>
                  </ul>
                </div>
                <p class="card-text">
                  <b> Sales</b>
                  <!--                 <button type="button" class="pull-right otp">
                  <a href="OTPForm.aspx">One Time Payment</a>
                </button> -->
                  </b>
                </p>
                <p><b>Name: </b>Stanley Hudson</p>
              </div>
            </div>
            <div id="5" class="card">
              <img class="card-img" src="../images/user.png">
              <div class="card-block">
                <div class="pull-right dropdown btn-group dropdown-for-my-team-forms">
                  <button type="button" class="pull-right dropdown-toggle otp" data-toggle="dropdown">Personnel Transactions</a>
                    <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="OTPForm.aspx">One Time Payment</a></li>
                    <li><a href="#">Leave Management</a></li>
                    <li><a href="#">Reappointments</a></li>
                    <li><a href="#">Supplemental Appointments</a></li>
                    <li><a href="#">Promotions/Salary Adjustments/Job Changes</a></li>
                  </ul>
                </div>
                <p class="card-text">
                  <b>Assistant to the Regional Manager / Sales 
                <!-- <button type="button" class="pull-right otp">
                    <a href="OTPForm.aspx">One Time Payment</a>
                  </button> -->
                </b>
                </p>
                <p><b>Name: </b>Dwight Schrute</p>
              </div>
            </div>
            <div id="6" class="card">
              <img class="card-img" src="../images/user.png" alt="User Photo">
              <div class="card-block">
                <div class="pull-right dropdown btn-group dropdown-for-my-team-forms">
                  <button type="button" class="pull-right dropdown-toggle otp" data-toggle="dropdown">Personnel Transactions</a>
                    <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="OTPForm.aspx">One Time Payment</a></li>
                    <li><a href="#">Leave Management</a></li>
                    <li><a href="#">Reappointments</a></li>
                    <li><a href="#">Supplemental Appointments</a></li>
                    <li><a href="#">Promotions/Salary Adjustments/Job Changes</a></li>
                  </ul>
                </div>
                <p class="card-text">
                  <b>Sales</b>
                  <!--                 <button type="button" class="pull-right otp">
                  <a href="OTPForm.aspx">One Time Payment</a>
                </button> -->
                  </b>
                </p>
                <p><b>Name: </b>Phyllis Vance</p>
              </div>
            </div>
          </div>
          <div class="card" id="3">
            <!-- <div class="vertical_line"></div> -->
            <img class="card-img" src="../Images/user.png" alt="User Photo">
            <div class="card-block">
              <div class="pull-right dropdown btn-group dropdown-for-my-team-forms">
                <button type="button" class="pull-right dropdown-toggle otp" data-toggle="dropdown">Personnel Transactions</a>
                  <span class="caret"></span></button>
                <ul class="dropdown-menu">
                  <li><a href="OTPForm.aspx">One Time Payment</a></li>
                  <li><a href="#">Leave Management</a></li>
                  <li><a href="#">Reappointments</a></li>
                  <li><a href="#">Supplemental Appointments</a></li>
                  <li><a href="#">Promotions/Salary Adjustments/Job Changes</a></li>
                </ul>
              </div>
              <p class="card-text">
                <b>Lead Accountant
<!--                   <button type="button" class="pull-right otp">
                    <a href="OTPForm.aspx">One Time Payment</a>
                  </button> -->
                </b>
              </p>
              <p><b>Name: </b>Angela Martin</p>
              <button type="button" data-toggle="collapse" href=".kids.card-3" aria-expanded="false" aria-controls="collapseExample">
                View Angela's Team
              </button>
            </div>
          </div>
          <div class="kids card-3 collapse">
            <div id="7" class="card">
              <img class="card-img" src="../Images/user.png" alt="User Photo">
              <div class="card-block">
                <div class="pull-right dropdown btn-group dropdown-for-my-team-forms">
                  <button type="button" class="pull-right dropdown-toggle otp" data-toggle="dropdown">Personnel Transactions</a>
                    <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="OTPForm.aspx">One Time Payment</a></li>
                    <li><a href="#">Leave Management</a></li>
                    <li><a href="#">Reappointments</a></li>
                    <li><a href="#">Supplemental Appointments</a></li>
                    <li><a href="#">Promotions/Salary Adjustments/Job Changes</a></li>
                  </ul>
                </div>
                <p class="card-text">
                  <b>Accountant 
<!--                 <button type="button" class="pull-right otp">
                  <a href="OTPForm.aspx">One Time Payment</a>
                </button> -->
                </b>
                </p>
                <p><b>Name: </b>Oscar Martinez</p>
              </div>
            </div>
            <div id="8" class="card">
              <img class="card-img" src="../Images/user.png" alt="USer Photo">
              <div class="card-block">
                <div class="pull-right dropdown btn-group dropdown-for-my-team-forms">
                  <button type="button" class="pull-right dropdown-toggle otp" data-toggle="dropdown">Personnel Transactions</a>
                    <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="OTPForm.aspx">One Time Payment</a></li>
                    <li><a href="#">Leave Management</a></li>
                    <li><a href="#">Reappointments</a></li>
                    <li><a href="#">Supplemental Appointments</a></li>
                    <li><a href="#">Promotions/Salary Adjustments/Job Changes</a></li>
                  </ul>
                </div>
                <p class="card-text">
                  <b>Accountant
<!--                 <button type="button" class="pull-right otp">
                  <a href="OTPForm.aspx">One Time Payment</a>
                </button> -->
                </b>
                </p>
                <p><b>Name: </b>Kevin Malone</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
  </main>

</asp:Content>
