goog.provide('API.Client.order_data');

/**
 * @record
 */
API.Client.OrderData = function() {}

/**
 * Exchange name
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.exchangeId;

/**
 * Client unique identifier for the trade.
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.id;

/**
 * Hash client id
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.clientOrderIdFormatExchange;

/**
 * Exchange order id
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.exchangeOrderId;

/**
 * Amount open
 * @type {!number}
 * @export
 */
API.Client.OrderData.prototype.amountOpen;

/**
 * Amount filled
 * @type {!number}
 * @export
 */
API.Client.OrderData.prototype.amountFilled;

/**
 * @type {!API.Client.orderStatus}
 * @export
 */
API.Client.OrderData.prototype.status;

/**
 * History of order status changes
 * @type {!Array<!Array<!string>>}
 * @export
 */
API.Client.OrderData.prototype.timeOrder;

/**
 * Error message
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.errorMessage;

/**
 * Client unique identifier for the trade.
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.clientOrderId;

/**
 * The symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.symbolExchange;

/**
 * The CoinAPI symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.symbolCoinapi;

/**
 * Quoted decimal amount to purchase.
 * @type {!number}
 * @export
 */
API.Client.OrderData.prototype.amountOrder;

/**
 * Quoted decimal amount to spend per unit.
 * @type {!number}
 * @export
 */
API.Client.OrderData.prototype.price;

/**
 * Buy or Sell
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.side;

/**
 * The order type.
 * @type {!string}
 * @export
 */
API.Client.OrderData.prototype.orderType;

/**
 * @type {!API.Client.timeInForce}
 * @export
 */
API.Client.OrderData.prototype.timeInForce;

/**
 * Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
 * @type {!API.Client.date}
 * @export
 */
API.Client.OrderData.prototype.expireTime;

/**
 * Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
 * @type {!Array<!string>}
 * @export
 */
API.Client.OrderData.prototype.execInst;

/** @enum {string} */
API.Client.OrderData.SideEnum = { 
  BUY: 'BUY',
  SELL: 'SELL',
}
/** @enum {string} */
API.Client.OrderData.OrderTypeEnum = { 
  LIMIT: 'LIMIT',
}
/** @enum {string} */
API.Client.OrderData.Array&lt;!ExecInstEnum&gt; = { 
  MAKER_OR_CANCEL: 'MAKER_OR_CANCEL',
}
