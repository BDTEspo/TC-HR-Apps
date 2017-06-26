$(function() {
  // Initialize form validation on the registration form.
  // It has the name attribute "registration"
  $("form[name='otp_validation']").validate({
    // Specify validation rules
    rules: {
      // The key name on the left side is the name attribute
      // of an input field. Validation rules are defined
      // on the right side
      date: "required",
      paymentAmount: "required",
      paymentReason: "required",
    },
    // Specify validation error messages
    messages: {
      date: "Please enter the date in mm/dd/yyyy format",
      paymentAmount: "Please enter the payment amount",
      paymentReason: "Please provide a payment reason"
    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
      console.log("what even");
      form.submit();
    }
  });
});