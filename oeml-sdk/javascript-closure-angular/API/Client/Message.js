goog.provide('API.Client.Message');

/**
 * @record
 */
API.Client.Message = function() {}

/**
 * Type of message.
 * @type {!string}
 * @export
 */
API.Client.Message.prototype.type;

/**
 * @type {!API.Client.Severity}
 * @export
 */
API.Client.Message.prototype.severity;

/**
 * If message related exchange then identifier of this exchange.
 * @type {!string}
 * @export
 */
API.Client.Message.prototype.exchangeId;

/**
 * Message text.
 * @type {!string}
 * @export
 */
API.Client.Message.prototype.message;

