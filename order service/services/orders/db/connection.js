const Sequelize = require("sequelize");

let sequelize = new Sequelize(
			process.env.USER_DB_NAME,
			process.env.USER_DB_USER,
			process.env.USER_DB_PASS,
			{
				host: process.env.USER_DB_HOST,
				port: process.env.USER_DB_PORT,
				dialect: "mysql",
			});

module.exports = sequelize            
    

	

