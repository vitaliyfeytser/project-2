//------------Kristal Murphy ---------------------//
// when user clicks 
$("#btnSubmitProfile").on("click", function (event) {
    console.log("Click");
    event.preventDefault();
    // make a newPerson obj
    var newPerson = {
        // first name from first name input
        firstName: $("#firstNameInput").val(),
        // last name from last name input
        lastName: $("#LastNameInput").val(),
        // city from age input
        city: $("#cityInput").val(),
        // points from force-points input
        state: $("#stateInput").val(),
        //gender input 
        gender: $("#genderInput option:selected").val(),
        // age from the age imput 
        age: $("#ageInput option:selected").val(),
        //email from the emial input 
        email: $("#emailInput").val(),
        // bio from the bio input
        bio: $("#BioInput").val(),
        //password from the password input 
        password: $("#passwordInput").val(),
    };
    // send an AJAX POST-request with jQuery
    $.post("/api/reader", newPerson)
        // on success, run this callback
        .then(function (data) {
            // log the data we found
            console.log(data);
        });
});


$(".favorInput").on("click", function (event) {
    console.log("Click");
    event.preventDefault();

    var favorBook = {
        bookId: $(this).data("book"),
        readerId: "1"
    };
    $.post("/api/favor", favorBook)
        .then(function (data) {
            console.log(data);
        })
});