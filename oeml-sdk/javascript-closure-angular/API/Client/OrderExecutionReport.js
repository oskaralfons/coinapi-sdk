goog.provide('API.Client.OrderExecutionReport');

/**
 * @record
 */
API.Client.OrderExecutionReport = function() {}

/**
 * Exchange identifier.
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReport.prototype.exchangeId;

/**
 * Unique identifier for the order assigned by the `OEML API` client.
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReport.prototype.clientOrderId;

/**
 * Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order.
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReport.prototype.symbolExchange;

/**
 * CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order.
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReport.prototype.symbolCoinapi;

/**
 * Order quantity.
 * @type {!number}
 * @export
 */
API.Client.OrderExecutionReport.prototype.amountOrder;

/**
 * Order price.
 * @type {!number}
 * @export
 */
API.Client.OrderExecutionReport.prototype.price;

/**
 * @type {!API.Client.OrdSide}
 * @export
 */
API.Client.OrderExecutionReport.prototype.side;

/**
 * @type {!API.Client.OrdType}
 * @export
 */
API.Client.OrderExecutionReport.prototype.orderType;

/**
 * @type {!API.Client.TimeInForce}
 * @export
 */
API.Client.OrderExecutionReport.prototype.timeInForce;

/**
 * Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
 * @type {!API.Client.date}
 * @export
 */
API.Client.OrderExecutionReport.prototype.expireTime;

/**
 * Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
 * @type {!Array<!string>}
 * @export
 */
API.Client.OrderExecutionReport.prototype.execInst;

/**
 * Hash client id
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReport.prototype.clientOrderIdFormatExchange;

/**
 * Exchange order id
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReport.prototype.exchangeOrderId;

/**
 * Amount open
 * @type {!number}
 * @export
 */
API.Client.OrderExecutionReport.prototype.amountOpen;

/**
 * Amount filled
 * @type {!number}
 * @export
 */
API.Client.OrderExecutionReport.prototype.amountFilled;

/**
 * @type {!API.Client.OrdStatus}
 * @export
 */
API.Client.OrderExecutionReport.prototype.status;

/**
 * Timestamped history of order status changes.
 * @type {!Array<!Array<!string>>}
 * @export
 */
API.Client.OrderExecutionReport.prototype.timeOrder;

/**
 * Error message
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReport.prototype.errorMessage;

/** @enum {string} */
API.Client.OrderExecutionReport.Array&lt;!ExecInstEnum&gt; = { 
  MAKER_OR_CANCEL: 'MAKER_OR_CANCEL',
  AUCTION_ONLY: 'AUCTION_ONLY',
  INDICATION_OF_INTEREST: 'INDICATION_OF_INTEREST',
}
