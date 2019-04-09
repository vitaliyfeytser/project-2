// Code here handles what happens when a user submits a new person on the form.
// Effectively it takes the form inputs then sends it to the server to save in the DB.
//------------Kristal Murphy ---------------------//

// when user clicks 
$("#btnSubmitProfile").on("click", function(event) {
 event.preventDefault();

 // make a newPerson obj
 var newPerson= {
   //  first name from first name input
   firstName: $("#firstNameInput").val(),
   // last name  from last name input
   lastName: $("#LastNameInput").val(),
   // city from age input
   City: $("#cityInput").val(),
   // points from force-points input
   state: $("#stateInput").val(),
   //gender input 
   gender: $("#genderInput option:select").val(),
   // age from the age imput 
   age: $("#ageInput option:select").val(),
   //email from the emial input 
   email:$("#emailInput").val(),
   // bio from the bio input
   bio:$("#BioInput").val(),
   //password from the password input 
   password:$("#passwordInput").val(),

 };

 // send an AJAX POST-request with jQuery
 $.post("/api/new", newPerson)
   // on success, run this callback
   .then(function(data) {
     // log the data we found
     console.log(data);
     // tell the user we're adding a character with an alert window
     alert("Adding character...");
   });

 // empty each input box by replacing the value with an empty string
 $("#name").val("");
 $("#role").val("");
 $("#age").val("");
 $("#force-points").val("");

});

//------------Kristal Murphy ---------------------//