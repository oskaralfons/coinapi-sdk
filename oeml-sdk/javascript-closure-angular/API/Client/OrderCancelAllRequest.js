goog.provide('API.Client.OrderCancelAllRequest');

/**
 * @record
 */
API.Client.OrderCancelAllRequest = function() {}

/**
 * Exchange identifier from which active orders should be canceled.
 * @type {!string}
 * @export
 */
API.Client.OrderCancelAllRequest.prototype.exchangeId;

