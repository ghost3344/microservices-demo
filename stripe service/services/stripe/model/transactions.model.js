const { Sequelize } = require("sequelize")
const sequelize = require("../db/connection")
const bcrypt  = require("bcrypt")

const Transaction = sequelize.define("transactions",
{
    transaction_id:{
        type: Sequelize.STRING(50),
        allowNull : false,
        primaryKey:true,
        defaultValue : Sequelize.UUIDV4
    },
    order_id:{
        type: Sequelize.STRING(50),
        allowNull : false,
    },
    payment_status:{
        type: Sequelize.ENUM('success', 'failed',"processing"),
        allowNull: false
    },
    payment_type:{
        type: Sequelize.ENUM('credit', 'debit',"upi"),
        allowNull: false
    },
    card_details:{
        type: Sequelize.JSON,
        allowNull: true,
    }    
},
{
    modelName:"Transaction",
    tableName:"transactions",
    timeStamps:true
})

module.exports = Transaction