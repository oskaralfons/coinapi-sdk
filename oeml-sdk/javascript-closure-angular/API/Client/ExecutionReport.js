goog.provide('API.Client.ExecutionReport');

/**
 * @record
 */
API.Client.ExecutionReport = function() {}

/**
 * Result type name
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.type;

/**
 * Exchange name
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.exchangeId;

/**
 * Client unique identifier for the trade.
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.id;

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
 * History of order status changes
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

/**
 * Client unique identifier for the trade.
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.clientOrderId;

/**
 * The symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.symbolExchange;

/**
 * The CoinAPI symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.symbolCoinapi;

/**
 * Quoted decimal amount to purchase.
 * @type {!number}
 * @export
 */
API.Client.ExecutionReport.prototype.amountOrder;

/**
 * Quoted decimal amount to spend per unit.
 * @type {!number}
 * @export
 */
API.Client.ExecutionReport.prototype.price;

/**
 * Buy or Sell
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.side;

/**
 * The order type.
 * @type {!string}
 * @export
 */
API.Client.ExecutionReport.prototype.orderType;

/**
 * @type {!API.Client.TimeInForce}
 * @export
 */
API.Client.ExecutionReport.prototype.timeInForce;

/**
 * Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
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

/** @enum {string} */
API.Client.ExecutionReport.SideEnum = { 
  BUY: 'BUY',
  SELL: 'SELL',
}
/** @enum {string} */
API.Client.ExecutionReport.OrderTypeEnum = { 
  LIMIT: 'LIMIT',
}
/** @enum {string} */
API.Client.ExecutionReport.Array&lt;!ExecInstEnum&gt; = { 
  MAKER_OR_CANCEL: 'MAKER_OR_CANCEL',
  AUCTION_ONLY: 'AUCTION_ONLY',
  INDICATION_OF_INTEREST: 'INDICATION_OF_INTEREST',
}
