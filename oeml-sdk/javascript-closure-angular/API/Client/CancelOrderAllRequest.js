goog.provide('API.Client.CancelOrderAllRequest');

/**
 * @record
 */
API.Client.CancelOrderAllRequest = function() {}

/**
 * Exchange identifier from which active orders should be canceled.
 * @type {!string}
 * @export
 */
API.Client.CancelOrderAllRequest.prototype.exchangeId;

