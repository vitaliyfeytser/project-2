module.exports = function(sequelize, DataTypes) {
  var Readers = sequelize.define("readers", {
    firstName: DataTypes.STRING,
    lastName: DataTypes.STRING,
    city: DataTypes.STRING,
    stateUS: DataTypes.STRING,
    gender: DataTypes.STRING,
    ageRange: DataTypes.STRING,
    bio: DataTypes.TEXT,
    email: DataTypes.TEXT,
  });

  Readers.associate = function(models) {
    // Associating Readers with favoriteBooks
    // When a Reader is deleted, also delete any associated favoriteBooks and bookClubs
    Readers.hasMany(models.favoriteBooks, {
      onDelete: "cascade"
    });
    Readers.hasMany(models.bookClubs, {
      onDelete: "cascade"
    });
  };
  
  return Readers;
};
