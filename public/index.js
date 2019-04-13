// var $ = require("jquery");
// var http = require('http');

// Get references to page elements
// var $loginBtn = $("#loginBtn");
// var $userNameToggle = $("#user-name-toggle");
// var $dataUser = $("#user-name-display").attr("data-user");
// // var $submitBtn = $("#submit");
// var $cardDeck = $(".card-deck");

var setEventListeners = function () {
  $(".promoted-books-at-top").click(function () {
    $("#detailsSection").collapse("toggle");
  });
  // TOGGLES LOG-IN FORM IN INDEX.HTML
  $("#loginBtn").click(function () {
    $("#formSection").collapse("toggle");
    $(".front").collapse("show");
    $(".back").collapse("hide");
  });
  // TOGGLES LOG-IN TO SIGN-UP FORM IN INDEX.HTML
  $("#btnSignUp").click(function () {
    $(".front").collapse("hide");
    $(".back").collapse("show");
  });
  // FAVORITE BUTTON CLICK EVENT LISTENER <= Kristal's Code
  $(".favorInput").on("click", function (event) {
    console.log("Click");
    event.preventDefault();
    // favor book insert in the favor book table in SQL
    var favorBook = {
      bookId: $(this).data("book"),
      // !!!! REPLACE '1' WITH THE SIGNED IN USERS 'READER ID'  !!!!!!
      readerId: "1"
    };
    // send an AJAX POST-request with jQuery
    $.post("/api/favor", favorBook).then(function (data) {
      console.log(data);
    });
  });
};

var handleUserNameDisplay = function () {
  var $loginBtn = $("#loginBtn");
  var $userNameToggle = $("#user-name-toggle");
  var $dataUser = $("#user-name-display").attr("data-user");

  if ($dataUser === "0") {
    $userNameToggle.hide();
    $loginBtn.show();
  } else {
    $userNameToggle.show();
    $loginBtn.hide();
  }
};
handleUserNameDisplay();

// The API object contains methods for each kind of request we'll make
var API = {
  // saveExample: function (example) {
  //   return $.ajax({
  //     headers: {
  //       "Content-Type": "application/json"
  //     },
  //     type: "POST",
  //     url: "api/examples",
  //     data: JSON.stringify(example)
  //   });
  // },
  getPromotedBooks: function () {
    return $.ajax({
      url: "/api/promotedbooks/current",
      type: "GET"
    });
  },
  // deleteExample: function (id) {
  //   return $.ajax({
  //     url: "api/examples/" + id,
  //     type: "DELETE"
  //   });
  // }
};

var refreshCurrentPromotedBooks = function () {
  API.getPromotedBooks().then(function (data) {
    // Get references to page elements
    var $cardDeck = $(".card-deck");
    var $currentPromotedBooks = data.map(function (books) {
      var $bookDiv = $(
        "<div>", {
          class: "card",
          id: "book-one",
          "data-promoted-books-id": books.id
        }).append(
          $("<img>", {
            class: "card-img-top promoted-books-at-top",
            src: books.coverImage,
            alt: "Book image was not found!"
          }),
          $("<div>", {
            class: "card-body promoted-books-at-top"
          }).append(
            $("<h5>", {
              class: "card-title",
              text: books.title
            }),
            $("<p>", {
              class: "card-text",
              text: books.caption
            })
          ),
          $("<div>", {
            class: "card-footer"
          }).append(
            $("<small>", {
              class: "text-muted",
              text: "Join this book club or fav it for later!"
            }),
            $("<img>", {
              class: "ml-3 promoted-books-at-top",
              "data-book": books.id,
              src: "./images/arrow.png",
              alt: "Join This Book Club!",
              width: "20px",
              height: "20px",
              "data-toggle": "tooltip",
              "data-placement": "top",
              title: "Join This Book Club!"
            }),
            $("<img>", {
              class: "favorInput",
              "data-book": books.id,
              src: "./images/heart.png",
              alt: "Fav It For Later!",
              style: "defaultStyle",
              width: "20px",
              height: "20px",
              "data-toggle": "tooltip",
              "data-placement": "top",
              title: "Fav It For Later!"
            })
          )
        )
      return $bookDiv;
    });
    // $cardDeck.empty();
    // $cardDeck.append($currentPromotedBooks);

    $cardDeck.html($currentPromotedBooks);
    setEventListeners();
  });
};

// TOGGLES BOOKCLUB DETAILS SECTION IN INDEX.HTML
$(document).ready(function () {
  // GENERATE DATA-TAGS IN BOOK PARENT DIV
  // 1. TO DISPLAY CURRENT BOOKCLUBS AROUND THE BOOK
  // 2. TO FAVORITE A BOOK
  // - ADD HTML CLASS TAGS TO EACH BOOK "BOOK-0NE" ...
  // - USE 'THIS' JS REFERENCE TO GENERATE THE CORRECT DB INFO TO THE CLICK EVENTS BELOW
  // <div class="card" id="book-two" data-promoted-books-id="">

  refreshCurrentPromotedBooks();
});

