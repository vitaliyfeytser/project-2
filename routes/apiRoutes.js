var db = require("../models");

module.exports = function(app) {
  // Get all examples
  app.get("/api/bookclubs", function(req, res) {
    bookClub.bookClubs.findAll({}).then(function(dbExamples) {
      res.json(dbExamples);
    });
  });

  app.get("/api/:bookClubID", function(req, res){
    if(req.params.bookClubID) {
      bookClub.findOne({
        where: {
          bookClubID: req.params.bookClubID
        }
      }).then(function(result) {
        return res.json(result);
      })
    } else {
      bookClub.findAll().then(function(result){
        return res.json(result);
      })
    }
  });

  app.get("/api/:readerID", function(req,res){
    if(req.params.readerID){
      readers.findOne({
        where: {
          id: req.params.readerID
        }
      }).then(function(result){
        return res.json(result);
      })
    } else {
      var noresult = {
        id = -1,
        reader_name = "User ID not found",
        age = 0,
        gender = "N/A",
        email = "N/A",
      }
      return res.json(noresult);
    }
  })

  // Create a new example
  app.post("/api/newreader", function(req, res) {
    bookClub.readers.create(req.body).then(function(dbExample) {
      res.json(dbExample);
    });
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
  app.delete("/api/examples/:id", function(req, res) {
    db.Example.destroy({ where: { id: req.params.id } }).then(function(dbExample) {
      res.json(dbExample);
    });
  });
};
