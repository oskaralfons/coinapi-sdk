goog.provide('API.Client.OrderCancelSingleRequest');

/**
 * @record
 */
API.Client.OrderCancelSingleRequest = function() {}

/**
 * Exchange name
 * @type {!string}
 * @export
 */
API.Client.OrderCancelSingleRequest.prototype.exchangeId;

/**
 * Order Id
 * @type {!string}
 * @export
 */
API.Client.OrderCancelSingleRequest.prototype.exchangeOrderId;

/**
 * Client order Id
 * @type {!string}
 * @export
 */
API.Client.OrderCancelSingleRequest.prototype.clientOrderId;

