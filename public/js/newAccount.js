$("#btnSubmitProfile").on("click", function(event) {
  console.log("Click");
  event.preventDefault();
  // make a newPerson obj
  var newPerson = {
    firstName: $("#firstNameInput").val(),
    lastName: $("#LastNameInput").val(),
    city: $("#cityInput").val(),
    state: $("#stateInput").val(),
    gender: $("#genderInput option:selected").val(),
    age: $("#ageInput option:selected").val(),
    email: $("#emailInput").val(),
    bio: $("#BioInput").val(),
    password: $("#passwordInput").val()
  };
  // send an AJAX POST-request with jQuery
  $.post("/api/reader", newPerson)
    // on success, run this callback
    .then(function(data) {
      // log the data we found
      console.log(data);
    });
});
