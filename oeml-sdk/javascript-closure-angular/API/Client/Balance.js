goog.provide('API.Client.Balance');

/**
 * @record
 */
API.Client.Balance = function() {}

/**
 * Exchange identifier.
 * @type {!string}
 * @export
 */
API.Client.Balance.prototype.exchangeId;

/**
 * @type {!Array<!API.Client.Balance_data>}
 * @export
 */
API.Client.Balance.prototype.data;

