goog.provide('API.Client.OrderExecutionReport_allOf');

/**
 * The order execution report message.
 * @record
 */
API.Client.OrderExecutionReportAllOf = function() {}

/**
 * Hash client id
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.clientOrderIdFormatExchange;

/**
 * Exchange order id
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.exchangeOrderId;

/**
 * Amount open
 * @type {!number}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.amountOpen;

/**
 * Amount filled
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

