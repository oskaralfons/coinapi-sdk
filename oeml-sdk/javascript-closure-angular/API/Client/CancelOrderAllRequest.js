goog.provide('API.Client.CancelOrderAllRequest');

/**
 * Cancel all orders request object.
 * @record
 */
API.Client.CancelOrderAllRequest = function() {}

/**
 * Identifier of the exchange from which active orders should be canceled.
 * @type {!string}
 * @export
 */
API.Client.CancelOrderAllRequest.prototype.exchangeId;

