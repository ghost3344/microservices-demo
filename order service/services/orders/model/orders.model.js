const { Sequelize } = require("sequelize")
const sequelize = require("../db/connection")
const bcrypt  = require("bcrypt")

const Order = sequelize.define("orders",
{
    order_id:{
        type: Sequelize.STRING(50),
        allowNull : false,
        primaryKey:true,
        defaultValue : Sequelize.UUIDV4
    },
    user_id:{
        type: Sequelize.STRING(50),
        allowNull : false,
    },
    order_amount:{
        type: Sequelize.DECIMAL(10,2),
        defaultValue:0
    },
    payment_status:{
        type: Sequelize.ENUM('success', 'failed',"processing"),
        allowNull: false
    },
    payment_provider:{
        type: Sequelize.ENUM('paypal', 'stripe'),
        allowNull: false
    }    
},
{
    modelName:"Order",
    tableName:"orders",
   timeStamps:true
})

module.exports = Order