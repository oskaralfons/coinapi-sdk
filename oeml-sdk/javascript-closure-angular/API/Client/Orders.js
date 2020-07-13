goog.provide('API.Client.Orders');

/**
 * @record
 */
API.Client.Orders = function() {}

/**
 * Constant value `snapshotOrders`.
 * @type {!string}
 * @export
 */
API.Client.Orders.prototype.type;

/**
 * Exchange identifier.
 * @type {!string}
 * @export
 */
API.Client.Orders.prototype.exchangeId;

/**
 * Orders array
 * @type {!Array<!API.Client.Orders_data>}
 * @export
 */
API.Client.Orders.prototype.data;

