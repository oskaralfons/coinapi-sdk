goog.provide('API.Client.OrderCancelSingleRequest');

/**
 * Cancel single order request object.
 * @record
 */
API.Client.OrderCancelSingleRequest = function() {}

/**
 * Exchange identifier.
 * @type {!string}
 * @export
 */
API.Client.OrderCancelSingleRequest.prototype.exchangeId;

/**
 * The unique identifier of the order assigned by the exchange. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
 * @type {!string}
 * @export
 */
API.Client.OrderCancelSingleRequest.prototype.exchangeOrderId;

/**
 * The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
 * @type {!string}
 * @export
 */
API.Client.OrderCancelSingleRequest.prototype.clientOrderId;

