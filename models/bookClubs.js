module.exports = function(sequelize, DataTypes) {
  var bookClubs = sequelize.define("bookClubs", {
    promotedBookId: DataTypes.INTEGER,
    readerId: DataTypes.INTEGER,
    locationId: DataTypes.INTEGER
  });

  bookClubs.associate = function(models) {
    // We're saying that a bookClubs should belong to promotedBooks
    // A bookClubs can't be created without a promotedBooks due to the foreign key constraint
    bookClubs.belongsTo(models.promotedBooks, {
      foreignKey: {
        allowNull: false
      }
    });

    // bookClubs.hasMany(models.readers, {
    //   // onDelete: "cascade"
    //   constraints: false
    // });
    bookClubs.hasMany(models.locations, {
      onDelete: "cascade"
    });
  };

  return bookClubs;
};
