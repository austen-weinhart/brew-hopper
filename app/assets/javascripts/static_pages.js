$(document).ready(function(){
  // this is the url we are going to request the json from
  var API_BASE = '/api/beers';

  function addBeer(jqElem, data){
    var name = data.name;
    var image_url = data.image_url;
    var abv = data.abv;
    var availability = data.availability;
    var description = data.description;
    var food_pairings = data.food_pairings;
    var glassware = data.glassware;
    var serving_temp = data.serving_temp;
    var review_id = data.review_id;
    var brewer_id = data.brewer_id;
    var style_id = data.style_id;

    var listItem = "<div class='beer-indiv'>";
    listItem += "<img src='" + image_url + "' width='150px' height='150px'>";
    listItem += "<p width='100px'>" + name + "<p>";
    listItem += "<p width='100px'>" + description + "<p>";
    

    jqElem.append("<li>" + listItem + "</li>");
    console.log(listItem);
  }

  // The response from the server will be saved to this variable 'json'
  var json = $.ajax({
    datatype: 'json',
    type: 'GET',
    url: API_BASE,
    date: {}
  }); // end json variable

  // console.log(json);
  json.done(function(data){
    var i;

    for(i=0; i < data.length; i+=1){
      console.log(data[i]);
      addBeer( $('#beers-list'), data[i] );
    } // end for loop
  }); // end json.done function

  // If the request fails, this is what we will do with it
  json.fail(function(data){
    $('#beers').html("<h2>FAILED TO LOAD</h2>");
  }); // end of json.fail function

}); // end of document ready function