module.exports = function(sequelize, DataTypes) {
  var locations = sequelize.define("locations", {
    placeName: DataTypes.STRING,
    placeAddress: DataTypes.STRING,
    meetingTimes: DataTypes.STRING
  });
  return locations;
};
