goog.provide('API.Client.ExecutionReport_allOf');

/**
 * The order execution report message.
 * @record
 */
API.Client.ExecutionReportAllOf = function() {}

/**
 * Hash client id
 * @type {!string}
 * @export
 */
API.Client.ExecutionReportAllOf.prototype.clientOrderIdFormatExchange;

/**
 * Exchange order id
 * @type {!string}
 * @export
 */
API.Client.ExecutionReportAllOf.prototype.exchangeOrderId;

/**
 * Amount open
 * @type {!number}
 * @export
 */
API.Client.ExecutionReportAllOf.prototype.amountOpen;

/**
 * Amount filled
 * @type {!number}
 * @export
 */
API.Client.ExecutionReportAllOf.prototype.amountFilled;

/**
 * @type {!API.Client.OrdStatus}
 * @export
 */
API.Client.ExecutionReportAllOf.prototype.status;

/**
 * Timestamped history of order status changes.
 * @type {!Array<!Array<!string>>}
 * @export
 */
API.Client.ExecutionReportAllOf.prototype.timeOrder;

/**
 * Error message
 * @type {!string}
 * @export
 */
API.Client.ExecutionReportAllOf.prototype.errorMessage;

