goog.provide('API.Client.ExecutionReport');

/**
 * @record
 */
API.Client.ExecutionReport = function() {}

/**
 * Exchange identifier.
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.exchangeId;

/**
 * Unique identifier for the order assigned by the `OEML API` client.
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.clientOrderId;

/**
 * Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order.
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.symbolExchange;

/**
 * CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order.
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.symbolCoinapi;

/**
 * Order quantity.
 * @type {!number}
 * @export
 */
API.Client.ExecutionReport.prototype.amountOrder;

/**
 * Order price.
 * @type {!number}
 * @export
 */
API.Client.ExecutionReport.prototype.price;

/**
 * @type {!API.Client.OrdSide}
 * @export
 */
API.Client.ExecutionReport.prototype.side;

/**
 * @type {!API.Client.OrdType}
 * @export
 */
API.Client.ExecutionReport.prototype.orderType;

/**
 * @type {!API.Client.TimeInForce}
 * @export
 */
API.Client.ExecutionReport.prototype.timeInForce;

/**
 * Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
 * @type {!API.Client.date}
 * @export
 */
API.Client.ExecutionReport.prototype.expireTime;

/**
 * Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>
 * @type {!Array<!string>}
 * @export
 */
API.Client.ExecutionReport.prototype.execInst;

/**
 * Hash client id
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.clientOrderIdFormatExchange;

/**
 * Exchange order id
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.exchangeOrderId;

/**
 * Amount open
 * @type {!number}
 * @export
 */
API.Client.ExecutionReport.prototype.amountOpen;

/**
 * Amount filled
 * @type {!number}
 * @export
 */
API.Client.ExecutionReport.prototype.amountFilled;

/**
 * @type {!API.Client.OrdStatus}
 * @export
 */
API.Client.ExecutionReport.prototype.status;

/**
 * Timestamped history of order status changes.
 * @type {!Array<!Array<!string>>}
 * @export
 */
API.Client.ExecutionReport.prototype.timeOrder;

/**
 * Error message
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.errorMessage;

/** @enum {string} */
API.Client.ExecutionReport.Array&lt;!ExecInstEnum&gt; = { 
  MAKER_OR_CANCEL: 'MAKER_OR_CANCEL',
  AUCTION_ONLY: 'AUCTION_ONLY',
  INDICATION_OF_INTEREST: 'INDICATION_OF_INTEREST',
}
