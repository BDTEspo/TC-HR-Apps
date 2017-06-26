// var otherFieldHTML = '<div class="form-group">
//   <label class="control-label col-sm-2" for="other-payment-reason">Other Payment Reason:</label>
//   <div class="col-sm-10">
//     <input class="form-control" id="other-payment-reason" placeholder="Enter other payment reason">
//   </div>
// </div>'


// var otherPaymentReason is written in this way because the html is treated as a string
function checkValue(value) {
  var otherContainer = $('#other-reason-to-appear')
  if (value === "other") {
    var otherPaymentReason = '<div class="form-group">' +
                '<label class="control-label col-sm-2" for="other-payment-reason">Other Payment Reason:</label>' +
                '<div class="col-sm-10">' +
                  '<input class="form-control" id="other-payment-reason" placeholder="Enter Other Payment Reason">' +
                '</div>' +
              '</div>'
    console.log("other was clicked")
    console.log(otherContainer)
    otherContainer.html(otherPaymentReason)
  } else {
    // else will only remove the other field if the other field is there
    otherContainer.html("")
    console.log("This failed because you are a failure")
  }
}
