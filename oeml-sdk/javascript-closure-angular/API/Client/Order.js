goog.provide('API.Client.Order');

/**
 * @record
 */
API.Client.Order = function() {}

/**
 * null
 * @type {!string}
 * @export
 */
API.Client.Order.prototype.type;

/**
 * Exchange name
 * @type {!string}
 * @export
 */
API.Client.Order.prototype.exchangeName;

/**
 * Orders array
 * @type {!Array<!API.Client.Order_data>}
 * @export
 */
API.Client.Order.prototype.data;

