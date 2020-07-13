goog.provide('API.Client.Position');

/**
 * @record
 */
API.Client.Position = function() {}

/**
 * Result type.
 * @type {!string}
 * @export
 */
API.Client.Position.prototype.type;

/**
 * Name of exchange.
 * @type {!string}
 * @export
 */
API.Client.Position.prototype.exchangeName;

/**
 * @type {!Array<!API.Client.Position_data>}
 * @export
 */
API.Client.Position.prototype.data;

