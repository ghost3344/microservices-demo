"use strict";

const UserModal = require("./model/users.model");

/**
 * @typedef {import('moleculer').ServiceSchema} ServiceSchema Moleculer's Service Schema
 * @typedef {import('moleculer').Context} Context Moleculer's Context
 */

/** @type {ServiceSchema} */
module.exports = {
	name: "users",
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
		getUsers: {
			rest: "GET /",
			/** @param {Context} ctx */
			async handler(ctx) {

				return "Hello";
			}
		},
	},

	/**
	 * Methods
	 */
	methods: {
		/**
		 */

	},
};
