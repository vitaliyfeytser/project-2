module.exports = function(sequelize, DataTypes) {
  var locations = sequelize.define("locations", {
    placeName: DataTypes.STRING,
    placeAddress: DataTypes.STRING,
    meetingTimes: DataTypes.STRING
  });
  
  locations.associate = function(models) {
    // We're saying that a locations should belong to promotedBooks
    // A locations can't be created without a promotedBook due to the foreign key constraint
    locations.belongsTo(models.promotedBooks, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  return locations;
};
