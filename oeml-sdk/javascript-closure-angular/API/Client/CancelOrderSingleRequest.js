goog.provide('API.Client.CancelOrderSingleRequest');

/**
 * @record
 */
API.Client.CancelOrderSingleRequest = function() {}

/**
 * Exchange name
 * @type {!string}
 * @export
 */
API.Client.CancelOrderSingleRequest.prototype.exchangeId;

/**
 * Order Id
 * @type {!string}
 * @export
 */
API.Client.CancelOrderSingleRequest.prototype.exchangeOrderId;

/**
 * Client order Id
 * @type {!string}
 * @export
 */
API.Client.CancelOrderSingleRequest.prototype.clientOrderId;

