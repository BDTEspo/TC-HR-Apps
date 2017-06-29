var _gPayee_Uni = null;


$(document).ready(function(){
  console.log("Ready to add otp rows!")

  var i = 2;
  var max_fields = 5
  var template = $('#idxPercentage').html()
  var makeRow = Handlebars.compile(template)
  var _gConstBTRServiceUrl = 'https://btrservices.azurewebsites.net';
  BTR.Index.SiteUrl(_gConstBTRServiceUrl); 
  BTR.Account.SiteUrl(_gConstBTRServiceUrl);
  Banner.Employee.SiteUrl(_gConstBTRServiceUrl);
    // Banner.Employee.AuthorizationToken('asfsadfasfdasfsfsaf');
  BTR.User.dept_key = 1; 
  BTR.User.uni_key = 36;
  _gPayee_Uni = BTRUtils.GetParamByName('payee_uni');
  // debugger;
  if (_gPayee_Uni != null){
    LookupEmployee(_gPayee_Uni)
  }  


  //Banner.Employee.AuthorizationToken(_gConstBTRServiceUrl);

  $('#add_index_field_button').click(function(e) {
    e.preventDefault()
    if (i < max_fields) {
      // var rowHTML = makeRow({rowNumber: i})
      var rowHTML = makeRow({rowNumber: i, indexes: BTR.INDEX_DATA})
      $('.index-account-percentages').append(rowHTML)
      i++;
    }
  });

  $('#remove_index_button').click(function(e) {
    e.preventDefault()
    console.log("Delete has been clicked")
    var groupsofAccounts = $('.index-account-percentages')
    var lastChild = groupsofAccounts.children().length - 1
    groupsofAccounts.children()[lastChild].remove()
  });

});
