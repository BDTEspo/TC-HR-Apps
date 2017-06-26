$(document).ready(function() {
  doStuff(
    ".additional_indexes_wrapper",
    ".add_index_field_button",
    "Index:",
    "Enter Index"
  );

  doStuff(
    ".additional_percentages_wrapper",
    ".add_percentage_field_button",
    "Percentage:",
    "Enter Percentage"
  );
});

  function doStuff(wrapperClass, addButtonClass, label, placeholder) {        
    var max_fields      = 4; //maximum input boxes allowed
    var wrapper         = $(wrapperClass); //Fields wrapper
    var add_button      = $(addButtonClass); //Add button ID
    

    var x = 1; //initlal text box count
    $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
        if(x < max_fields){ //max input box allowed
            x++; //text box increment
            var aboutToAppendHtml = addNumberofTextBox(x)
            $(wrapper).append(aboutToAppendHtml); //add input box
        }
    });
    
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); 
        console.log(this)
        $(this).parent('div').parent('div').remove(); 
        x--;
    })

    function addNumberofTextBox(x){
      var field_html = '<div class="form-group">' +
            '<label class="control-label col-sm-2" for="index">' +
            label + ' ' + x + ':' +
            '</label>' +
            '<div class="col-sm-10">' +
              '<input class="form-control" id="index" placeholder="' +
              placeholder + 
              '"Enter Index">' +
              '<button class="remove_field">Remove</button>' +
            '</div>' +
          '</div>'
      return field_html
    }
  };
