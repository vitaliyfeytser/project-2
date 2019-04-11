var config = {
  apiKey: "AIzaSyDR520PVWe0l8PyVbC95S7FBsIaYF0eh1w",
  authDomain: "the-ukraine-train-project.firebaseapp.com",
  databaseURL: "https://the-ukraine-train-project.firebaseio.com",
  projectId: "the-ukraine-train-project",
  storageBucket: "",
  messagingSenderId: "616421465352"
};

firebase.initializeApp(config);

console.log(firebase);

$(document).ready(function() {
  console.log(firebase);
  // Create a variable to reference the database.
  database = firebase.database();

  // FirebaseUI config.
  var uiConfig = {
    signInSuccessUrl: "./index.html",
    signInOptions: [
      // Leave the lines as is for the providers you want to offer your users.
      {
        provider: firebase.auth.EmailAuthProvider.PROVIDER_ID,
        requireDisplayName: false
      }
    ]
  };

  // Initialize the FirebaseUI Widget using Firebase.
  var ui = new firebaseui.auth.AuthUI(firebase.auth());
  // The start method will wait until the DOM is loaded.
  ui.start("#firebaseui-auth-container", uiConfig);

  var user = firebase.auth().currentUser;

  if (user) {
    // User is signed in.
    console.log("CURRENT USER (signed-in): ", user);
    console.log("user.displayName: ", user.displayName);
    $("#navbarDropdown").text(user.displayName);
    $("#sign-in-button").hide();
    $("#member-dropdown").show();
  } else {
    // No user is signed in.
    console.log("CURRENT USER (signed-out): ", user);
    $("#member-dropdown").hide();
    $("#sign-in-button").show();
  }
  // SIGN-IN/OUT ACTIONS
  firebase.auth().onAuthStateChanged(function(user) {
    if (user) {
      // User is signed in.
      console.log("user.displayName: ", user.displayName);
      $("#navbarDropdown").text(user.displayName);
      $("#sign-in-button").hide();
      $("#member-dropdown").show();
    } else {
      // No user is signed in.
      console.log("CURRENT USER (signed-out): ", user);
      $("#member-dropdown").hide();
      $("#sign-in-button").show();
    }
  });

  $("#sign-out-dropdown").on("click", function(event) {
    event.preventDefault();

    firebase
      .auth()
      .signOut()
      .then(function() {
        // Sign-out successful.
        console.log("USER SIGNED OUT!..¯_(ツ)_/¯ ");
        console.log("user.displayName: ", user.displayName);
        $("#navbarDropdown").text("");
        $("#sign-in-button").show();
        $("#member-dropdown").hide();
      })
      .catch(function() {
        // An error happened.
        console.log("If user.displayName below is not NULL ...");
        console.log("USER DID NOT SIGN OUT");
      });
    console.log("user.displayName: ", user.displayName);
  });
});
