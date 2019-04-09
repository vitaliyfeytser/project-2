var db = require("../models");


module.exports = function(app) {
  ////////////////////////////////////////////////////////////
  // GET routes for getting each table's dataset
  app.get("/api/readers", function(req, res) {
    db.readers.findAll({}).then(function(results) {
      res.json(results);
    });
    // res.end();
  });

  app.get("/api/promotedbooks", function(req, res) {
    db.promotedBooks.findAll({}).then(function(results) {
      res.json(results);
    });
  });

  app.get("/api/bookclubs", function(req, res) {
    db.bookClubs.findAll({}).then(function(results) {
      res.json(results);
    });
  });

  app.get("/api/favoritebooks", function(req, res) {
    db.favoriteBooks.findAll({}).then(function(results) {
      res.json(results);
    });
  });

  app.get("/api/locations", function(req, res) {
    db.locations.findAll({}).then(function(results) {
      res.json(results);
    });
  });
  ////////////////////////////////////////////////////////////
  // GET route for getting ONE item from table's each dataset
  app.get("/api/bookclubs/:bookClubID", function(req, res) {
    console.log("---GET request is run here");
    if (req.params.bookClubID) {
      console.log("---if statement is run here");
      db.bookClubs
        .findOne({
          where: {
            id: req.params.bookClubID
          }
        })
        .then(function(results) {
          return res.json(results);
        });
    } else {
      console.log("---else is run here");
      console.log("ERROR: This entry does not exist.");

      db.bookClubs.findAll({}).then(function(all) {
        // res.json(vit);
        return res.json(all);
      });
    }
  });

  app.get("/api/readers/:readerID", function(req, res) {
    if (req.params.readerID !== null) {
      db.readers
        .findOne({
          where: {
            id: req.params.readerID
          }
        })
        .then(function(result) {
          return res.json(result);
        });
    } else {
      var noresult = {
        id: "NONE",
        readerName: "User ID not found",
        age: 0,
        gender: "N/A",
        email: "N/A"
      };
      return res.json(noresult);
    }
  });

  // // Create a new example
  // app.post("/api/newreader", function (req, res) {
  //   bookClub.readers.create(req.body).then(function (dbExample) {
  //     res.json(dbExample);
  //   });
  // });

  //Example of app.post if above code does not work/if we need to define the object more clearly
  //   app.post("/api/new", function(req, res) {
  //     // Take the request...
  //     var character = req.body;

  //     // Create a routeName

  //     // Using a RegEx Pattern to remove spaces from character.name
  //     // You can read more about RegEx Patterns later https://www.regexbuddy.com/regex.html
  //     var routeName = character.name.replace(/\s+/g, "").toLowerCase();

  //     // Then add the character to the database using sequelize
  //     Character.create({
  //       routeName: routeName,
  //       name: character.name,
  //       role: character.role,
  //       age: character.age,
  //       forcePoints: character.forcePoints
  //     });

  //     res.status(204).end();
  //   });
  // };

  // Delete an example by id
  app.delete("/api/readers/:id", function(req, res) {
    db.Readers.destroy({
      where: {
        id: req.params.id
      }
    }).then(function(dbReaders) {
      res.json(dbReaders);
    });
  });
};
