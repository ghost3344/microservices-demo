const { Sequelize } = require("sequelize")
const sequelize = require("../db/connection")
const bcrypt  = require("bcrypt")

const User = sequelize.define("users",
{
    user_id:{
        type: Sequelize.STRING(50),
        allowNull : false,
        primaryKey:true,
        defaultValue : Sequelize.UUIDV4
    },
    user_name:{
        type: Sequelize.STRING(50),
        allowNull : false,
    },
    userstatus:{
        type: Sequelize.BOOLEAN,
        allowNull : false,
        defaultValue: true
    },
    password:{
        type: Sequelize.STRING(100),
        allowNull: false,
        set(value){
            this.setDataValue("password",bcrypt.hashSync(value,10))
        }
    }    
},
{
    modelName:"User",
    tableName:"users",
    paranoid : true
})

module.exports = User