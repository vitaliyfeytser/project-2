module.exports = function(sequelize, DataTypes) {
  var bookClubs = sequelize.define("bookClubs", {
    bookId: DataTypes.INTEGER,
    readerId: DataTypes.INTEGER,
    locationId: DataTypes.INTEGER
  });
  return bookClubs;
};

// module.exports = function(sequelize, DataTypes) {
//   var Readers = sequelize.define("readers", {
//     firstName: DataTypes.STRING,
//     lastName: DataTypes.STRING,
//     birthdate: DataTypes.DATE,
//     gender: DataTypes.TEXT,
//     email: {
//       type: DataTypes.TEXT,
//       validate: {
//         isEmail: true
//       }
//     }
//     // createdAt: DataTypes.TIMESTAMP
//   });
//   return Readers;
// };
