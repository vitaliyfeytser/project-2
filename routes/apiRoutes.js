var db = require("../models");
var moment = require("moment");
moment().format();

module.exports = function (app) {
  ////////////////////////////////////////////////////////////
  // GET routes for getting each table's dataset
  app.get("/api/readers", function (req, res) {
    db.readers.findAll({
      include: [db.favoriteBooks, db.bookClubs]
    }).then(function (results) {
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
          },
          include: [db.readers, db.locations]
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
          },
          include: [db.readers, db.locations]
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

  // GET A READER BY ID WITH ALL ASSOCIATED DATA
  app.get("/api/readers/:readerId", function (req, res) {
    db.readers
      .findOne({
        where: {
          id: req.params.readerId
        },
        include: [db.favoriteBooks, db.bookClubs]
      })
      .then(function (result) {
        return res.json(result);
      });
  });

  // CREATE A NEW READER
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

  // SAVE THE BOOK FAVORITED BY A READER
  app.post("/api/favor", function (req, res) {
    console.log(req.body);

    db.favoriteBooks.create(req.body);

    res.status(204).end();
  });


  // DELETE A READER BY ID
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
