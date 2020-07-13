goog.provide('API.Client.OrderExecutionReport_allOf');

/**
 * The order execution report message.
 * @record
 */
API.Client.OrderExecutionReportAllOf = function() {}

/**
 * The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.clientOrderIdFormatExchange;

/**
 * The unique identifier of the order assigned by the exchange.
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.exchangeOrderId;

/**
 * Amount open.
 * @type {!number}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.amountOpen;

/**
 * Amount filled.
 * @type {!number}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.amountFilled;

/**
 * @type {!API.Client.OrdStatus}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.status;

/**
 * Timestamped history of order status changes.
 * @type {!Array<!Array<!string>>}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.timeOrder;

/**
 * Error message
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.errorMessage;

