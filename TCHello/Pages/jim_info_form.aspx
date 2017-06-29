<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>One Time Payment - TF</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/6.0.0/normalize.min.css" />
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <link rel="stylesheet" type="text/css" href="css/forms.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- handlebars cdn -->
  <!-- handlebars is a templating library -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.6/handlebars.min.js"></script>
  <!-- below references and 'loads' the typeahead library -->
  <script src="js/typeahead.js"></script>
  <!-- below references the script that the typehead library is used on -->
  <script src="js/office-workers.js"></script>
  <script src="js/form-other-box.js"></script>
  <script src="js/add_fields.js"></script>
</head>

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
        <a href="team.html">My Team</a>
        <!-- <a class="dropdown-toggle" data-toggle="dropdown" href="#">My Team<span class="caret"></span></a>
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
              <a href="toby_info_form.html" class="btn btn-primary">Submit</a>
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
        <form class="form-horizontal">
          <div class="form-group">
            <label class="control-label col-sm-2" for="date">Effective Date*:</label>
            <div class="col-sm-10">
              <input type="date" class="form-control" id="date">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="payment-amount">Payment Amount*:</label>
            <div class="col-sm-10">
              <input type="number" min="0" class="form-control currency" id="payment-amount" placeholder="Enter Payment Amount">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="payment-reason">Payment Reason (select one)*:</label>
            <div class="col-sm-10">
              <select class="form-control" id="payment-reason" onchange="checkValue(this.value)">
                <!-- need to add value to options so JS can find it as a click event -->
                <option>Please select a payment reason</option>
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
            <label class="control-label col-sm-2" for="payment-comment">Payment Comment:</label>
            <div class="col-sm-10">
              <input class="form-control" id="payment-comment" placeholder="Enter Comment">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="employee">Employee:</label>
            <div class="col-sm-10">
              <input type="employee" class="form-control typeahead" id="employee" value="Jim Halpert">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="UNI">UNI:</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="UNI" value="jdh4321">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="position">Position:</label>
            <div class="col-sm-10">
              <input type="position" class="form-control" id="position" value="Assistant Regional Manager">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="position-suffix">Position Suffix:</label>
            <div class="col-sm-10">
              <input type="position" class="form-control" id="position-suffix" value="TALL">
            </div>
          </div>
          <!--         <div class="form-group">
          <label class="control-label col-sm-2" for="position-suffix">Dept./Center Box:</label>
          <div class="col-sm-10">
            <input type="position-suffix" class="form-control" id="position-suffix" placeholder="Enter Position Suffix">
          </div>
        </div> -->
          <div class="form-group">
            <label class="control-label col-sm-2" for="index">Index:</label>
            <div class="col-sm-10">
              <input class="form-control" id="index" placeholder="Enter Index"> 
              <button class="add_index_field_button">Add Additional Fields</button>
            </div>
          </div>
          <div class="additional_indexes_wrapper">
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="organization">Organization:</label>
            <div class="col-sm-10">
              <input class="form-control" id="organization" value="FOAPAL Org">
            </div>
          </div>
          <!-- <div class="form-group">
          <label class="control-label col-sm-2" for="ssn">Payer SSN#:</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="ssn" placeholder="Enter last four digits of SSN">
          </div>
        </div> -->
          <div class="form-group">
            <label class="control-label col-sm-2" for="account">Account:</label>
            <div class="col-sm-10">
              <select class="form-control" id="account">
                <option>Please select an account</option>
                <option>0</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2 percentage" for="percentage">Percentage:</label>
            <div class="col-sm-10">
              <input class="form-control" id="percentage" placeholder="Enter Percentage">
              <button class="add_percentage_field_button">Add Additional Fields</button>
            </div>
          </div>
          <div class="additional_percentages_wrapper">
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="supervisor">Supervisor Name:</label>
            <div class="col-sm-10">
              <input class="form-control typeahead" id="supervisor" value="Michael Scott">
            </div>
          </div>
<!--           <div class="form-group">
            <label class="control-label col-sm-2" for="payment-amount">Payment Amount:</label>
            <div class="col-sm-10">
              <input type="number" min="0" class="form-control currency" id="payment-amount" placeholder="Enter Payment Amount">
            </div>
          </div> -->
          <!-- <div class="form-group">
            <label class="control-label col-sm-2" for="payment-reason">Payment Reason (select one):</label>
            <div class="col-sm-10">
              <select class="form-control" id="payment-reason" onchange="checkValue(this.value)">
                <!-- need to add value to options so JS can find it as a click event -->
                <!-- <option value="guitar">Playing an guitar during free hour</option>
                <option value="godfather">You were given an offer you couldn't refuse</option>
                <option value="office">Other office like reasons</option>
                <option value="other">Other</option>
              </select>
            </div>
          </div>
          <div id="other-reason-to-appear" class="form-group">
          </div> --> 
          <div class="text-center">
            <div class="text-center">
            <button class="submit-btn" data-toggle="modal" href="#submitModal" type="button">Submit One Time Payment Form</button>
            <button class="clear-btn" type="button">Clear</button>
            <div class="modal fade" id="submitModal">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                    </button>
                    <h4 class="modal-title">Error</h4>
                  </div>
                  <div class="modal-body">
                    <p>
                      <font color="red">Please fill in all mandatory fields marked with an asterisk(*).
                      </p>
                  </div>
                  <div class="modal-footer">
<!--                     <a href="#" class="btn btn-primary">Submit</a>
                    <a href="#" data-dismiss="modal" class="btn btn-primary">Cancel</a> -->
                  </div>
                </div>
              </div>
            </div>
          </div>
            <!-- <button class="submit-btn" type="button">Submit One Time Payment</button>
            <button class="clear-btn" type="button">Clear</button>
          </div> -->
        </form>
      </div>
  </main>
</body>

</html>