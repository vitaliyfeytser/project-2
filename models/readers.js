module.exports = function(sequelize, DataTypes) {
  var Readers = sequelize.define("readers", {
    firstName: DataTypes.STRING,
    lastName: DataTypes.STRING,
    birthdate: DataTypes.DATE,
    gender: DataTypes.TEXT,
    email: {
      type: DataTypes.TEXT,
      validate: {
        isEmail: true
      }
    }
    // createdAt: DataTypes.TIMESTAMP
  });
  return Readers;
};

// module.exports = function(sequelize, DataTypes) {
//   var Todo = sequelize.define("Todo", {
//     text: {
//       type: DataTypes.STRING,
//       // AllowNull is a flag that restricts a todo from being entered if it doesn't
//       // have a text value
//       allowNull: false,
//       // len is a validation that checks that our todo is between 1 and 140 characters
//       validate: {
//         len: [1, 140]
//       }
//     },
//     complete: {
//       type: DataTypes.BOOLEAN,
//       // defaultValue is a flag that defaults a new todos complete value to false if
//       // it isn't supplied one
//       defaultValue: false
//     }
//   });
//   return Todo;
// };
