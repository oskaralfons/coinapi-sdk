goog.provide('API.Client.CancelOrderSingleRequest');

/**
 * Cancel single order request object.
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
 * The unique identifier of the order assigned by the exchange. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
 * @type {!string}
 * @export
 */
API.Client.CancelOrderSingleRequest.prototype.exchangeOrderId;

/**
 * The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
 * @type {!string}
 * @export
 */
API.Client.CancelOrderSingleRequest.prototype.clientOrderId;

