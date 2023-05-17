"use strict";
const { MoleculerError } = require("moleculer").Errors;
const  Sequelize  = require("sequelize");
const OrderModel = require("./model/orders.model");

/**
 * @typedef {import('moleculer').ServiceSchema} ServiceSchema Moleculer's Service Schema
 * @typedef {import('moleculer').Context} Context Moleculer's Context
 */

/** @type {ServiceSchema} */
module.exports = {
	name: "orders",
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
			password: "string|min:8",
		},
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
			create(ctx) {},
		},
	},

	/**
	 * Actions
	 */
	actions: {
		/**
		 * Increase the quantity of the product item.
		 */
		createOrder: {
			rest: "POST /",
			/** @param {Context} ctx */
			async handler(ctx) {
				const orderObj = ctx.params;
				console.log(ctx.params);
				try {
					//api call to check if user exist and active

					///

					const orderDetails = await this.createOrder(orderObj);
					let paymentDetails = {};
					if (orderObj.payment_provider === "paypal") {
						paymentDetails = await this.broker.call(
							"paypal.processPayment",
							{ ...orderDetails, ...ctx.params }
						);
					} else {
						paymentDetails = await this.broker.call(
							"stripe.processPayment",
							{ ...orderDetails, ...ctx.params }
						);
					}

					console.log(paymentDetails);

					// update order status based on transaction status
					const updatedOrderDetails = await this.updateOrder(
						orderDetails.order_id,
						paymentDetails.payment_status
					);

					return {
						data: updatedOrderDetails,
						message: "order created",
					};
				} catch (err) {
					console.log(err);
					throw new MoleculerError(
						"Something happened",
						500,
						"ERR_SOMETHING"
					);
				}
			},
		},
		getOrders: {
			rest: "GET /",
			/** @param {Context} ctx */
			async handler(ctx) {
				const searchBy = ctx.params;
				console.log(ctx.params);
				try {
					//api call to check if user exist and active

					///

					const ordersDetails = await this.getOrders(searchBy);

					return {
						data: ordersDetails,
						message: "orders fetched",
					};
				} catch (err) {
					console.log(err);
					throw new MoleculerError(
						"Something happened",
						500,
						"ERR_SOMETHING"
					);
				}
			},
		},
	},

	/**
	 * Methods
	 */
	methods: {
		/**
		 */
		async getOrders({min_amount = 0 , max_amount = 10000, payment_provider = ["paypal","stripe"]}) {
			const orderDetails = await OrderModel.findAll(
				{where:{
					[Sequelize.Op.or]:[{
						order_amount: {
							[Sequelize.Op.gte]: min_amount
						  }
					},
					{
						order_amount: {
							[Sequelize.Op.lte]: max_amount
						  }
					}],
					payment_provider
				},
				raw:true}
			);
			return orderDetails;
		},
	},
};
