module.exports = function(sequelize, DataTypes) {
  var promotedBooks = sequelize.define("promotedBooks", {
    title: DataTypes.STRING,
    author: DataTypes.STRING,
    monthAndYearPromoted: DataTypes.DATE
  });
  return promotedBooks;
};
