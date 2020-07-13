goog.provide('API.Client.Orders_data');

/**
 * @record
 */
API.Client.OrdersData = function() {}

/**
 * Exchange name
 * @type {!string}
 * @export
 */
API.Client.OrdersData.prototype.exchangeId;

/**
 * Client unique identifier for the trade.
 * @type {!string}
 * @export
 */
API.Client.OrdersData.prototype.id;

/**
 * Hash client id
 * @type {!string}
 * @export
 */
API.Client.OrdersData.prototype.clientOrderIdFormatExchange;

/**
 * Exchange order id
 * @type {!string}
 * @export
 */
API.Client.OrdersData.prototype.exchangeOrderId;

/**
 * Amount open
 * @type {!number}
 * @export
 */
API.Client.OrdersData.prototype.amountOpen;

/**
 * Amount filled
 * @type {!number}
 * @export
 */
API.Client.OrdersData.prototype.amountFilled;

/**
 * @type {!API.Client.OrdStatus}
 * @export
 */
API.Client.OrdersData.prototype.status;

/**
 * History of order status changes
 * @type {!Array<!Array<!string>>}
 * @export
 */
API.Client.OrdersData.prototype.timeOrder;

/**
 * Error message
 * @type {!string}
 * @export
 */
API.Client.OrdersData.prototype.errorMessage;

/**
 * Client unique identifier for the trade.
 * @type {!string}
 * @export
 */
API.Client.OrdersData.prototype.clientOrderId;

/**
 * The symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.OrdersData.prototype.symbolExchange;

/**
 * The CoinAPI symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.OrdersData.prototype.symbolCoinapi;

/**
 * Quoted decimal amount to purchase.
 * @type {!number}
 * @export
 */
API.Client.OrdersData.prototype.amountOrder;

/**
 * Quoted decimal amount to spend per unit.
 * @type {!number}
 * @export
 */
API.Client.OrdersData.prototype.price;

/**
 * Buy or Sell
 * @type {!string}
 * @export
 */
API.Client.OrdersData.prototype.side;

/**
 * The order type.
 * @type {!string}
 * @export
 */
API.Client.OrdersData.prototype.orderType;

/**
 * @type {!API.Client.TimeInForce}
 * @export
 */
API.Client.OrdersData.prototype.timeInForce;

/**
 * Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
 * @type {!API.Client.date}
 * @export
 */
API.Client.OrdersData.prototype.expireTime;

/**
 * Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>
 * @type {!Array<!string>}
 * @export
 */
API.Client.OrdersData.prototype.execInst;

/** @enum {string} */
API.Client.OrdersData.SideEnum = { 
  BUY: 'BUY',
  SELL: 'SELL',
}
/** @enum {string} */
API.Client.OrdersData.OrderTypeEnum = { 
  LIMIT: 'LIMIT',
}
/** @enum {string} */
API.Client.OrdersData.Array&lt;!ExecInstEnum&gt; = { 
  MAKER_OR_CANCEL: 'MAKER_OR_CANCEL',
  AUCTION_ONLY: 'AUCTION_ONLY',
  INDICATION_OF_INTEREST: 'INDICATION_OF_INTEREST',
}
