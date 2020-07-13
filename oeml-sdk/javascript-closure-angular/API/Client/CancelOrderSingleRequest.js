goog.provide('API.Client.CancelOrderSingleRequest');

/**
 * @record
 */
API.Client.CancelOrderSingleRequest = function() {}

/**
 * Exchange identifier.
 * @type {!string}
 * @export
 */
API.Client.CancelOrderSingleRequest.prototype.exchangeId;

/**
 * The unique identifier of the order assigned by the exchange.
 * @type {!string}
 * @export
 */
API.Client.CancelOrderSingleRequest.prototype.exchangeOrderId;

/**
 * The unique identifier of the order assigned by the client.
 * @type {!string}
 * @export
 */
API.Client.CancelOrderSingleRequest.prototype.clientOrderId;

