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
    <link rel="stylesheet" type="text/css" href="../content/main.css" />
    <link rel="stylesheet" type="text/css" href="../content/forms.css" />
    <link rel="stylesheet" type="text/css" href="../content/validation.css"/>

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.6/handlebars.min.js"></script>
    <script type="text/javascript" src="../Scripts/typeahead.js"></script>
    <script type="text/javascript" src="../Scripts/office-workers.js"></script>
    <script type="text/javascript" src="../Scripts/form-other-box.js"></script>
    <script type="text/javascript" src="../Scripts/add_fields.js"></script>
    <script type="text/javascript" src="../Scripts/form-validation.js"></script>
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    One Time Payment Form
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="full" Title="loc:full" />
    <div>
        <p id="welcomeuser">
            <!-- The following content will be replaced with the user name when you run the app - see App.js -->
            initializing...
        </p>
    </div>
    <body>
  <header>
    <div class="container-fluid" id="top-nav">
      <div class="row">
        <div class="col-lg-12 col-md-10 col-sm-12 col-xs-12">
          <img src="static/logo.png" class="img-responsive">
        </div>
      </div>
    </div>
  </header>
  <nav id="nav-bar" class="navigation navbar navbar-default list-inline row" role="navigation">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".hamburger">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <ul class="nav navbar-nav list-inline collapse navbar-collapse hamburger">
      <li><a href="Default.aspx"><span class="glyphicon glyphicon-home"></span></a></li>
      <li class="btn-group">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">About Me<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#" style="color:blue">Example 1</a></li>
          <li><a href="#" style="color:blue">Example 2</a></li>
        </ul>
      </li>
      <li class="btn-group">
        <a href="Team.aspx">My Team</a>
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
                  <input type="text" class="form-control" id="uni-input">
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <a href="#" class="btn btn-primary" onclick="loadForm()">Submit</a>
              <a href="#" data-dismiss="modal" class="btn btn-primary">Cancel</a>
            </div>
          </div>
        </div>
      </div>
    </ul>
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
    <h3>One Time Payment</h3>
    <div class="form-container">
      <div class="jumbotron">
        <form class="form-horizontal" name="otp_validation">
          <div class="form-group">
            <label class="control-label col-sm-2" for="date">Effective Date*:</label>
            <div class="col-sm-8">
              <input type="date" name="date" class="form-control" id="date">
            </div>
          </div>
          <div class="form-group" name="registration">
            <label class="control-label col-sm-2" for="payment-amount">Payment Amount*:</label>
            <div class="col-sm-8">
              <input type="number" min="0" name="paymentAmount" class="form-control currency" id="payment-amount" placeholder="Enter Payment Amount">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="payment-reason">Payment Reason (Select One)*:</label>
            <div class="col-sm-8">
              <select class="form-control" name="paymentReason" id="payment-reason" onchange="checkValue(this.value)">
                <option value="" disabled selected>Select the payment reason</option>
                <option value="guestspeaking">Guest Speaking</option>
                <option value="workshop">Teaching Workshop</option>
                <option value="curriculum">Curriculum Development</option>
                <option value="facilitator">Facilitator Fees</option>
                <option value="performance">Performance / Entertainment</option>
                <option value="video">Videography</option>
                <option value="other">Other</option>
              </select>
            </div>
          </div>
          <div id="other-reason-to-appear" class="form-group">
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="payment-comment">Payment Comment (Optional):</label>
            <div class="col-sm-8">
              <textarea class="form-control" id="payment-reason" placeholder="Enter Comment" rows="2"></textarea>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="employee">Employee:</label>
            <div class="col-sm-8">
              <input type="employee" class="form-control" id="employee" placeholder="Enter Employee's First and Last Name">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="UNI">UNI:</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="UNI" placeholder="Enter Employee's UNI">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="position">Position:</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="position" placeholder="Enter Position">
<!--                 <option>Please select a position</option>
                <option>Accounting</option>
                <option>Customer Service</option>
                <option>Quality Assurance</option>
                <option>Reception</option>
                <option>Sales</option>
                <option>Supplier Relations</option>
              </select> -->
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="position-suffix">Position Suffix:</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="position-suffix" placeholder="Enter Position Suffix">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="dept">Department:</label>
            <div class="col-sm-8">
              <input type="project-center" class="form-control" id="Department" placeholder="Enter Department Org Number">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="organization">Organization:</label>
            <div class="col-sm-8">
              <input class="form-control" id="organization" placeholder="Enter FOAPAL Organization">
            </div>
          </div>
          
          <!-- Index -->
          <div class="form-group">
            <label class="control-label col-sm-2" for="index">Index:</label>
            <div class="col-sm-8">
              <select type="text" name="from-index" class="form-control" id="toTAIndex_F1" onchange="LookupAccount(this);">
<!--               <select type="text" name="from-index" class="form-control"> -->
                <option value="" disabled selected>Select the Index</option>
              </select>
            </div>
          </div>

          <!-- Account -->
          <div class="form-group">
            <label class="control-label col-sm-2" for="account">Account:</label>
            <div class="col-sm-8">
<!--               <select class="form-control" id="account"> -->
<!--                 <option>Please select an account</option>
                <option>0</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option> -->
                <select class="form-control" type="text" name="from-account" id="toTAAccount_F1">
                </select>
            </div>
          </div>

          <!-- Percentage -->
          <div class="form-group">
            <label class="control-label col-sm-2 percentage" for="percentage">Percentage:</label>
            <div class="col-sm-8">
              <input class="form-control" id="percentage" placeholder="Enter Percentage">
            </div>
          </div>



          <div class="index-account-percentages">
          </div>

          <center><span id="add_index_field_button" href="" class="btn btn-success">Add Additional Index</span>
            
          <span id="remove_index_button" href="" class="btn btn-danger">Remove Index</span>
          </center>


          <div class="form-group">
            <label class="control-label col-sm-2" for="supervisor">Supervisor Name:</label>
            <div class="col-sm-8">
              <input class="form-control" id="supervisor" placeholder="Enter the last and first name of the recipient's supervisor">
            </div>
          </div>
          <div class="text-center">
            <button>Submit One Time Payment Form</button>
            <button class="clear-btn" type="button">Clear</button>
          </div>
        </form>
      </div>
  </main>

  <script id="idxPercentage" type="text/x-handlebars-template">
    <div id="iap-group-{{ rowNumber }}" class="iap form-horizontal" name="otp_validation">

      <hr>
      <div class="form-group">
        <label class="control-label col-sm-2" for="index">Index {{rowNumber}}:</label>
        <div class="col-sm-8">
          <select type="text" name="from-index" class="form-control" id="toTAIndex_F{{rowNumber}}" onchange="LookupAccount(this);">
            <option value="-1" disabled selected>Select the Index</option>
          {{#each indexes}}
            <option value="{{index_key}}">
              {{ index_number_description }}
            </option>
          {{/each}}
          </select>
        </div>
      </div>

      <div class="form-group">
        <label class="control-label col-sm-2" for="account">Account {{rowNumber}}:</label>
        <div class="col-sm-8">
           <select class="form-control" type="text" name="from-account" id="toTAAccount_F{{rowNumber}}">
            <option value="-1" disabled selected>Select the Account</option>
          {{#each accounts}}
            <option value="{{accounts_key}}">
              {{ account_number_description }}
            </option>
          {{/each}}
          </select>
        </div>
      </div>

      <div class="form-group">
        <label class="control-label col-sm-2 percentage" for="percentage">Percentage {{rowNumber}}:</label>
        <div class="col-sm-8">
          <input class="form-control" id="percentage" placeholder="Enter Percentage">
        </div>
      </div>
    </div>
  </script>

<script language="javascript">
  function LookupEmployee(uni)
  {

    Banner.Employee.ByUni(uni,
      function(data) {
        $('input#employee').val(data.first_name + ' ' + data.last_name)
        $('input#UNI').val(data.uni)
        $('input#position').val(data.position_description)
        $('input#position-suffix').val(data.position_suffix)

        if (data == null)
        {
          //just for testing
          $('#txtEmployeeName').value("No user found");
          return;
        }
        $('#txtEmployeeName').val(data.last_name + ', '+data.first_name + ' (' + data.position_number +')');
      },
      function(error) {
      debugger;
        alert('Error getting data:'+error.Message);
      }
    );
  }

  function LookupAccount(objField)
  {
    var index_key = objField.value;
    BTR.Account.GetAccountsByIndexKey(index_key,  
      function (data) {
        var _select = new Array();
        
        _select.push('<option value="-1">Select Account</option>');
        $.each(data, function(index,obj) {
          _select.push('<option value="'+obj.account_key+'">'+obj.account_number_description+'</option>');
        });
        //if this is on the From side then clear balance
        
        //clear accounts and repopulate
        var accountId = '#' + objField.id.replace("Index","Account")
        $(accountId).empty().append(_select.join());      
        //debugger;
        if ((typeof selectedValue ) != 'undefined')
        {
          $(accountId).val(selectedValue);
        }
        },
      function (data) {
          alert("Error(LookupAccount): "+ data.Message);
     }
    );
  }

  function loadForm(){
    window.location.href = 'OTPForm.aspx' + '?payee_uni=' + $('#uni-input').val();
  }

  // function GetUserIDFromURL(){
  //   var queryString = document.location.search
  //   var idxOfUNI = queryString.indexOf('=')+ 1
  //   var UNI = queryString.slice(idxOfUNI)
  // }

</script>
</body>
</asp:Content>
