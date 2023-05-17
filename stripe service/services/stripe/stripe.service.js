"use strict";
const { MoleculerError } = require("moleculer").Errors;
const TransactionModel = require("./model/transactions.model");

/**
 * @typedef {import('moleculer').ServiceSchema} ServiceSchema Moleculer's Service Schema
 * @typedef {import('moleculer').Context} Context Moleculer's Context
 */

/** @type {ServiceSchema} */
module.exports = {
	name: "stripe",
	// version: 1,

	/**
	 * Mixins
	 */
	mixins: [],

	/**
	 * Settings
	 */
	settings: {
		// Validator for the `create` & `insert` actions.
		entityValidator: {
			name: "string|min:3",
			password: "string|min:8"
		}
	},

	/**
	 * Action Hooks
	 */
	hooks: {
		before: {
			/**
			 * Register a before hook for the `create` action.
			 *
			 * @param {Context} ctx
			 */
			create(ctx) {

			}
		}
	},

	/**
	 * Actions
	 */
	actions: {
		/**
		 * Increase the quantity of the product item.
		 */
		processPayment: {
			rest: "POST /",
			/** @param {Context} ctx */
			async handler(ctx) {
				
				try{
					const { order_id , card_details , payment_type} = ctx.params.dataValues;
					
					console.log("ctx.params",ctx.params)
					//initiate payment from card details and wait for response



					// after getting response based on payment status update transaction
					let transactionDetails = await this.addTrasactionStatus({...ctx.params.dataValues,...ctx.params,payment_status:"success"});
					return transactionDetails
				}
				catch(err){
					console.log(err)
					throw new MoleculerError("Something happened", 500, "ERR_SOMETHING");
				}
			}
		},
	},

	/**
	 * Methods
	 */
	methods: {
		/**
		 */
		async addTrasactionStatus(transactionDetails){
			const transaction = await TransactionModel.create(transactionDetails)
			return transaction
		}

	},
};
