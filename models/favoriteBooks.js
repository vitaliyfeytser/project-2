module.exports = function(sequelize, DataTypes) {
  var favoriteBooks = sequelize.define("favoriteBooks", {
    bookId: DataTypes.INTEGER,
    readerId: DataTypes.INTEGER
  });
  return favoriteBooks;
};
