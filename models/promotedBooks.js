module.exports = function(sequelize, DataTypes) {
  var promotedBooks = sequelize.define("promotedBooks", {
    title: DataTypes.STRING,
    author: DataTypes.STRING,
    caption: DataTypes.STRING,
    coverImage: DataTypes.STRING,
    monthAndYearPromoted: DataTypes.STRING
  });

  promotedBooks.associate = function(models) {
    // Associating promotedBooks with bookClubs
    // When a Reader is deleted, also delete any associated bookClubs
    promotedBooks.hasMany(models.bookClubs, {
      onDelete: "cascade"
    });
  };
  return promotedBooks;
};
