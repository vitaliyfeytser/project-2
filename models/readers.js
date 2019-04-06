module.exports = function(sequelize, DataTypes) {
    var readers = sequelize.define("readers", {
      firstName: DataTypes.STRING,
      lastName: DataTypes.STRING,
      birthdate: DataTypes.DATE,
      gender: DataTypes.TEXT,
      email: DataTypes.TEXT
    });
    return readers;
  };