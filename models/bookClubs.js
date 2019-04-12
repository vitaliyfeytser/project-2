module.exports = function(sequelize, DataTypes) {
  var bookClubs = sequelize.define("bookClubs", {
    bookId: DataTypes.INTEGER,
    readerId: DataTypes.INTEGER,
    locationId: DataTypes.INTEGER
  });
  return bookClubs;
};
