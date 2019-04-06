module.exports = function(sequelize, DataTypes) {
  var readers = sequelize.define("readers", {
    reader_name: DataTypes.STRING,
    user_name: DataTypes.STRING,
    age: DataTypes.INTEGER,
    gender: DataTypes.TEXT,
    email: DataTypes.TEXT
    //   current_bookclub_id: DataTypes.INTEGER
  });
  return readers;
};
