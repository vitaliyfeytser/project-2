var db = require("../models");
var moment = require("moment");
moment().format();

module.exports = function (app) {
  ////////////////////////////////////////////////////////////
  // GET routes for getting each table's dataset
  app.get("/api/readers", function (req, res) {
    db.readers.findAll({}).then(function (results) {
      res.json(results);
    });
    // res.end();
  });

  app.get("/api/promotedbooks", function (req, res) {
    db.promotedBooks.findAll({}).then(function (results) {
      res.json(results);
    });
  });

  app.get("/api/bookclubs", function (req, res) {
    db.bookClubs.findAll({}).then(function (results) {
      res.json(results);
    });
  });

  app.get("/api/favoritebooks", function (req, res) {
    db.favoriteBooks.findAll({}).then(function (results) {
      res.json(results);
    });
  });

  app.get("/api/locations", function (req, res) {
    db.locations.findAll({}).then(function (results) {
      res.json(results);
    });
  });

  ////////////////////////////////////////////////////////////
  // GET route for getting ONE item from table's each dataset
  app.get("/api/bookclubs/:bookClubID", function (req, res) {
    if (req.params.bookClubID) {
      db.bookClubs
        .findOne({
          where: {
            id: req.params.bookClubID
          }
        })
        .then(function (results) {
          return res.json(results);
        });
    } else {
      console.log("ERROR: This entry does not exist.");

      db.bookClubs.findAll({}).then(function (all) {
        // res.json(vit);
        return res.json(all);
      });
    }
  });

  // GET BOOKCLUBS BY BOOK
  app.get("/api/bookclubs/:bookId", function (req, res) {
    if (req.params.bookId) {
      db.bookClubs
        .findAll({
          where: {
            id: req.params.bookId
          }
        })
        .then(function (results) {
          return res.json(results);
        });
    } else {
      console.log("ERROR: This entry does not exist.");

      db.bookClubs.findAll({}).then(function (all) {
        // res.json(vit);
        return res.json(all);
      });
    }
  });

  // GET READERS FAVORITED BOOKS
  app.get("/api/favoritebooks/:readerId", function (req, res) {
    if (req.params.readerId) {
      db.favoriteBooks
        .findAll({
          where: {
            id: req.params.readerId
          }
        })
        .then(function (results) {
          return res.json(results);
        });
    } else {
      console.log("ERROR: This entry does not exist.");

      db.favoriteBooks.findAll({}).then(function (all) {
        // res.json(vit);
        return res.json(all);
      });
    }
  });

  // CURRENT PROMOTED BOOKS ROUTE
  app.get("/api/promotedbooks/:current", function (req, res) {
    if (req.params.current) {
      // var currentDate = moment(new Date()).format("MM-YYYY");
      var currentDate = "04-2019";
      db.promotedBooks
        .findAll({
          where: {
            monthAndYearPromoted: currentDate
          }
        })
        .then(function (results) {
          return res.json(results);
        });
    } else {
      console.log("ERROR: This entry does not exist.");

      db.promotedBooks.findAll({}).then(function (all) {
        // res.json(vit);
        return res.json(all);
      });
    }
  });

  // PROMOTED BOOKS BY MONTH AND YEAR ROUTE
  app.get("/api/promotedbooks/:monthAndYearPromoted", function (req, res) {
    if (req.params.monthAndYearPromoted) {
      db.promotedBooks
        .findAll({
          where: {
            monthAndYearPromoted: req.params.monthAndYearPromoted
          }
        })
        .then(function (results) {
          return res.json(results);
        });
    } else {
      console.log("ERROR: This entry does not exist.");
      db.promotedBooks.findAll({}).then(function (all) {
        return res.json(all);
      });
      // return res.json(currentDate);
    }
  });

  app.get("/api/readers/:readerId", function (req, res) {
    if (req.params.readerId !== null) {
      db.readers
        .findOne({
          where: {
            id: req.params.readerId
          }
        })
        .then(function (result) {
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
  // app.post("/api/reader", function (req, res) {
  //   bookClub.readers.create(req.body).then(function (dbExample) {
  //     res.json(dbExample);
  //   });
  // });

  //Create a new reader
  app.post("/api/reader", function (req, res) {
    var reader = req.body;
    console.log(reader);

    db.readers
      .findOne({ where: { email: reader.email } })
      .then(function (user) {
        if (user) {
          res.status(400).send({ msg: "user already exist" });
        } else {
          db.readers
            .create({
              firstName: reader.firstName,
              lastName: reader.lastName,
              city: reader.city,
              stateUS: reader.state,
              gender: reader.gender,
              ageRange: reader.age,
              email: reader.email,
              bio: reader.bio,
              password: reader.password
            })
            .then(function (newUser) {
              res.staus(200).send(newUser);
            });
        }
      })
      .catch(function () {
        db.readers
          .create({
            firstName: reader.firstName,
            lastName: reader.lastName,
            city: reader.city,
            stateUS: reader.state,
            gender: reader.gender,
            ageRange: reader.age,
            email: reader.email,
            bio: reader.bio,
            password: reader.password
          })
          .then(function (newUser) {
            res.staus(200).send(newUser);
          });
      });
  });

  app.post("/api/favor", function (req, res) {
    console.log(req.body);

    db.favoriteBooks.create(req.body);

    res.status(204).end();
  });

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
  app.delete("/api/readers/:id", function (req, res) {
    db.Readers.destroy({
      where: {
        id: req.params.id
      }
    }).then(function (dbReaders) {
      res.json(dbReaders);
    });
  });
};
