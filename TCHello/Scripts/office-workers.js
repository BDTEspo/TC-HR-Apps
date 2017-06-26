$(document).ready(function(){

    var template = Handlebars.compile('<div>{{name}} - ({{position}})</div>');
    var empty = Handlebars.compile('<div>The One-Time Payment form is valid for current, active Teachers College employees only. If you are trying to complete a payment for a person who is not a TC employee, please go to Unimarket.</div>');

    // Defining the local dataset
    // each name is it's own object so we can bind the name Michael Scott to the data associated with it
    var workers = [
        {name:'Michael Scott', position:'Regional Manager', positionSuffix: 'Mgr', dept:'Paper Things', project_center:'Scranton', supervisorName:'David Wallace'}, 
        {name:'Jim Halpert', position:'Assistant Regional Manager', positionSuffix: 'Sr. Sales', dept:'Paper Things', project_center:'Scranton', supervisorName:'Michael Scott'}, 
        {name:'Dwight Schrute', position:'Assistant to the Regional Manager', positionSuffix: 'Sales', dept:'Paper Things', project_center:'Scranton', supervisorName:'Michael Scott'}, 
        {name:'Phyllis Vance', position:'Sales', positionSuffix: 'Sales', dept:'Paper Things', project_center:'Scranton', supervisorName:'Michael Scott'}, 
        {name:'Stanley Hudson', position:'Sales', positionSuffix: 'Sales', dept:'Paper Things', project_center:'Scranton', supervisorName:'Michael Scott'},
        ];

    
    // Constructing the suggestion engine
    var workers = new Bloodhound({
        // token is the thing you're looking through to find the search term
        // in this instance, the search term is name
        datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        local: workers,
    });
    
    // Initializing the typeahead
    $('.typeahead').typeahead({
        hint: true,
        highlight: true, /* Enable substring highlighting */
        minLength: 1, /* Specify minimum characters required for showing suggestions */
    },
    {
        name: 'workers',
        source: workers,
        templates: {
            //  suggestion data is the results of the search
            // (suggestion-data) => HTML string
            suggestion: template,
            empty: empty,
        }
    });
});  