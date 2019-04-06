module.exports = function(sequelize, DataTypes) {
  var favoriteBooks = sequelize.define("favoriteBooks", {
    bookId: DataTypes.INTEGER,
    userId: DataTypes.INTEGER
  });
  return favoriteBooks;
};