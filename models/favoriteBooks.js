module.exports = function(sequelize, DataTypes) {
  var favoriteBooks = sequelize.define("favoriteBooks", {
    promotedBookId: DataTypes.INTEGER,
    readerId: DataTypes.INTEGER
  });

  favoriteBooks.associate = function(models) {
    // We're saying that a favoriteBooks should belong to readers
    // A favoriteBooks can't be created without an readers due to the foreign key constraint
    favoriteBooks.belongsTo(models.readers, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  return favoriteBooks;
};
