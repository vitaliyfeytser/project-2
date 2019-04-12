// var $ = require("jquery");
// var http = require('http');

// Get references to page elements
var $loginBtn = $("#loginBtn");
var $userNameToggle = $("#user-name-toggle");
var $dataUser = $("#user-name-display").attr("data-user");
// var $submitBtn = $("#submit");
// var $exampleList = $("#example-list");

var handleUserNameDisplay = function() {
  if ($dataUser === "0") {
    $userNameToggle.hide();
    $loginBtn.show();
  } else {
    $userNameToggle.show();
    $loginBtn.hide();
  }
};
handleUserNameDisplay();

// var currentPromotedBooks = function() {
// }

// TOGGLES BOOKCLUB DETAILS SECTION IN INDEX.HTML
$(document).ready(function() {
  $(".promoted-books-at-top").click(function() {
    $("#detailsSection").collapse("toggle");
  });
  // TOGGLES LOG-IN FORM IN INDEX.HTML
  $("#loginBtn").click(function() {
    $("#formSection").collapse("toggle");
    $(".front").collapse("show");
    $(".back").collapse("hide");
  });
  // TOGGLES LOGI-IN TO SIGN-UP FORM IN INDEX.HTML
  $("#btnSignUp").click(function() {
    $(".front").collapse("hide");
    $(".back").collapse("show");
  });
});

// // FLIPS SIGN-UP FORM IN INDEX.HTML
// $("#card").click(function() {
//   $("#card").flip();
// });

// The API object contains methods for each kind of request we'll make
var API = {
  saveExample: function(example) {
    return $.ajax({
      headers: {
        "Content-Type": "application/json"
      },
      type: "POST",
      url: "api/examples",
      data: JSON.stringify(example)
    });
  },
  getPromotedBooks: function() {
    return $.ajax({
      url: "api/examples",
      type: "GET"
    });
  },
  deleteExample: function(id) {
    return $.ajax({
      url: "api/examples/" + id,
      type: "DELETE"
    });
  }
};
