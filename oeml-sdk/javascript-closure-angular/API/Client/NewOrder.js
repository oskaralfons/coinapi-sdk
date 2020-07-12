goog.provide('API.Client.newOrder');

/**
 * @record
 */
API.Client.NewOrder = function() {}

/**
 * Exchange name
 * @type {!string}
 * @export
 */
API.Client.NewOrder.prototype.exchangeId;

/**
 * Client unique identifier for the trade.
 * @type {!string}
 * @export
 */
API.Client.NewOrder.prototype.clientOrderId;

/**
 * The symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.NewOrder.prototype.symbolExchange;

/**
 * The CoinAPI symbol of the order.
 * @type {!string}
 * @export
 */
API.Client.NewOrder.prototype.symbolCoinapi;

/**
 * Quoted decimal amount to purchase.
 * @type {!number}
 * @export
 */
API.Client.NewOrder.prototype.amountOrder;

/**
 * Quoted decimal amount to spend per unit.
 * @type {!number}
 * @export
 */
API.Client.NewOrder.prototype.price;

/**
 * Buy or Sell
 * @type {!string}
 * @export
 */
API.Client.NewOrder.prototype.side;

/**
 * The order type.
 * @type {!string}
 * @export
 */
API.Client.NewOrder.prototype.orderType;

/**
 * @type {!API.Client.timeInForce}
 * @export
 */
API.Client.NewOrder.prototype.timeInForce;

/**
 * Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
 * @type {!API.Client.date}
 * @export
 */
API.Client.NewOrder.prototype.expireTime;

/**
 * Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
 * @type {!Array<!string>}
 * @export
 */
API.Client.NewOrder.prototype.execInst;

/** @enum {string} */
API.Client.NewOrder.SideEnum = { 
  BUY: 'BUY',
  SELL: 'SELL',
}
/** @enum {string} */
API.Client.NewOrder.OrderTypeEnum = { 
  LIMIT: 'LIMIT',
}
/** @enum {string} */
API.Client.NewOrder.Array&lt;!ExecInstEnum&gt; = { 
  MAKER_OR_CANCEL: 'MAKER_OR_CANCEL',
  AUCTION_ONLY: 'AUCTION_ONLY',
  INDICATION_OF_INTEREST: 'INDICATION_OF_INTEREST',
}
