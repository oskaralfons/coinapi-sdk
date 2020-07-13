goog.provide('API.Client.CreateOrderValidationError');

/**
 * @record
 */
API.Client.CreateOrderValidationError = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.CreateOrderValidationError.prototype.type;

/**
 * @type {!string}
 * @export
 */
API.Client.CreateOrderValidationError.prototype.title;

/**
 * @type {!number}
 * @export
 */
API.Client.CreateOrderValidationError.prototype.status;

/**
 * @type {!string}
 * @export
 */
API.Client.CreateOrderValidationError.prototype.traceId;

/**
 * @type {!string}
 * @export
 */
API.Client.CreateOrderValidationError.prototype.errors;

