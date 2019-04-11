module.exports = function(sequelize, DataTypes) {
  var promotedBooks = sequelize.define("promotedBooks", {
    title: DataTypes.STRING,
    author: DataTypes.STRING,
    caption: DataTypes.STRING,
    coverImage: DataTypes.STRING,
    monthAndYearPromoted: DataTypes.DATE
  });
  return promotedBooks;
};
