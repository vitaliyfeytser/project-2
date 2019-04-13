// var $ = require("jquery");
// var http = require('http');

// Get references to page elements
// var $loginBtn = $("#loginBtn");
// var $userNameToggle = $("#user-name-toggle");
// var $dataUser = $("#user-name-display").attr("data-user");
// // var $submitBtn = $("#submit");
// var $cardDeck = $(".card-deck");

// IF SUCCESS WITH FIREBASE => SET THIS VARIABLE FROM OUR DATABASE
var loggedInUserId = '3';
var currentlyViewdBook = 0;
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
  getReadersFaves: function () {
    return $.ajax({
      url: "/api/favoritebooks/" + loggedInUserId,
      type: "GET"
    });
  },
  getAllReaders: function () {
    return $.ajax({
      url: "/api/readers/",
      type: "GET"
    });
  },
  getCurrentReader: function () {
    return $.ajax({
      url: "/api/readers/" + loggedInUserId,
      type: "GET"
    });
  },
  getPromotedBooks: function () {
    return $.ajax({
      url: "/api/promotedbooks/current",
      type: "GET"
    });
  },
  getLocations: function () {
    return $.ajax({
      url: "/api/locations",
      type: "GET"
    });
  },
  getBookClubsByBook: function (bookID) {
    return $.ajax({
      url: "/api/bookclubs/" + bookID,
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

var setEventListeners = function () {

  // VIEW COLLAPSE TOGGLER FOR JOINING A BOOKCLUB DETAILS
  $(".promoted-books-at-top").on("click", function (event) {
    // console.log("Join Click");
    event.preventDefault();
    var promotedBook = {
      bookId: $(this).parent().data("promoted-books-id"),
      readerId: loggedInUserId,
    };
    if (currentlyViewdBook === promotedBook.bookId) {
      $("#detailsSection").collapse("toggle");
    } else {
      $("#detailsSection").collapse("show");
    }
  });

  $("#home-top-bar").click(function () {
    loggedInUserId = '0';
    refreshCurrentPromotedBooks();
    promotedClubDetails();
    handleUserNameDisplay();
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
    event.preventDefault();
    // favor book insert in the favor book table in SQL
    var favorBook = {
      bookId: $(this).data("book"),
      readerId: loggedInUserId
    };
    // send an AJAX POST-request with jQuery
    $.post("/api/favor", favorBook).then(function (data) {
      console.log(data);
    });
  });

  // JOIN BOOKCLUB BUTTON CLICK EVENT LISTENER <= Vitaliy's Code
  $(".promoted-books-at-top").on("click", function (event) {
    // console.log("Join Click");
    event.preventDefault();

    var promotedBook = {
      bookId: $(this).parent().data("promoted-books-id"),
      readerId: loggedInUserId
    };
    // console.log("promotedBook: ", promotedBook);

    $(".clubDetailsCard").hide();
    var selection = 'book-' + promotedBook.bookId + '-clubs';
    // console.log("selection: ", selection);
    $("#" + selection).show();
    // SETS A VALUE FOR THE COLLAPSE FUNCTION OF THE VIEW CONTROLLER
    currentlyViewdBook = promotedBook.bookId;

    API.getBookClubsByBook(promotedBook.bookId).then(function (data) {
      console.log("-------------getBookClubsByBook(): ", data);
      return data;
      // Get references to page elements
      // var $select1 = $("#FormControlSelect1");
      // var $times = data.map(function (locations) {
      //   var $option = $(
      //     "<option>", {
      //       text: locations.meetingTimes
      //     })
      //   return $option;
      // });
      // $select1.html($times);
    });

    API.getLocations().then(function (data) {
      console.log("-------------getLocations(): ", data);
      // Get references to page elements
      var $select1 = $("#FormControlSelect1");
      var $times = data.map(function (locations) {
        var $option = $(
          "<option>", {
            text: locations.meetingTimes
          })
        return $option;
      });
      $select1.html($times);
    });

    API.getLocations().then(function (resp) {
      console.log("-------------getLocations(): ", resp);
      // Get references to page elements
      var $select2 = $("#FormControlSelect2");
      var $places = resp.map(function (locations) {
        var $option = $(
          "<option>", {
            text: locations.placeAddress
          })
        return $option;
      });
      $select2.html($places);
    });

  });


};

var handleUserNameDisplay = function () {
  var $loginBtn = $("#loginBtn");
  var $userNameToggle = $("#user-name-toggle");
  var $dataUser = $("#user-name-display").attr("data-user", loggedInUserId);


  if (loggedInUserId === "0") {
    $userNameToggle.hide();
    $loginBtn.show();
  } else {
    $userNameToggle.show();
    $loginBtn.hide();

    API.getCurrentReader().then(function (data) {
      // console.log("-------------getCurrentReader(): ", data);
      // Get references to page elements
      var $userNameDisplay = $("#user-name-display");
      return $userNameDisplay.text(data.firstName + " " + data.lastName);
    });

    API.getReadersFaves().then(function (resp) {
      console.log("-------------getReadersFaves(): ", resp);
      // Get references to page elements
      var $booksLiked = $("#booksLiked");
      var $books = resp.map(function (books) {
        var $option = $(
          "<a>", {
            class: "list-group-item",
            text: books.bookId
          })
        return $option;
      });
      $booksLiked.html($books);
    });
  }
};
handleUserNameDisplay();


var refreshCurrentPromotedBooks = function () {
  API.getPromotedBooks().then(function (data) {
    console.log("-------------getPromotedBooks(): ", data);
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
            class: "card-footer promoted-books-at-top"
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
    $cardDeck.html($currentPromotedBooks);
    setEventListeners();
  });
};

var promotedClubDetails = function () {
  API.getPromotedBooks().then(function (data) {
    console.log("-------------getPromotedBooks(): ", data);
    // Get references to page elements
    var $clubDetails = $("#clubDetails");
    var $currentPromotedBooks = data.map(function (books) {
      var $bookDiv = $(
        "<div>", {
          class: "card clubDetailsCard",
          id: "book-" + books.id + "-clubs",
          "data-promoted-books-id": books.id
        }).append(
          $("<img>", {
            class: "card-img-top",
            src: books.coverImage,
            alt: "Book image was not found!"
          }),
          $("<div>", {
            class: "card-body"
          }).append(
            $("<h5>", {
              class: "card-title",
              text: books.title
            }),
            $("<p>", {
              class: "card-text",
              text: books.caption
            })
          )
        )
      return $bookDiv;
    });
    $clubDetails.html($currentPromotedBooks);
    // setEventListeners();
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
  promotedClubDetails();
});

