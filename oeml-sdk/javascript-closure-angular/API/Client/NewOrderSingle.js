goog.provide('API.Client.NewOrderSingle');

/**
 * @record
 */
API.Client.NewOrderSingle = function() {}

/**
 * Exchange identifier.
 * @type {!string}
 * @export
 */
API.Client.NewOrderSingle.prototype.exchangeId;

/**
 * Unique identifier for the order assigned by the `OEML API` client.
 * @type {!string}
 * @export
 */
API.Client.NewOrderSingle.prototype.clientOrderId;

/**
 * Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order.
 * @type {!string}
 * @export
 */
API.Client.NewOrderSingle.prototype.symbolExchange;

/**
 * CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order.
 * @type {!string}
 * @export
 */
API.Client.NewOrderSingle.prototype.symbolCoinapi;

/**
 * Order quantity.
 * @type {!number}
 * @export
 */
API.Client.NewOrderSingle.prototype.amountOrder;

/**
 * Order price.
 * @type {!number}
 * @export
 */
API.Client.NewOrderSingle.prototype.price;

/**
 * @type {!API.Client.OrdSide}
 * @export
 */
API.Client.NewOrderSingle.prototype.side;

/**
 * @type {!API.Client.OrdType}
 * @export
 */
API.Client.NewOrderSingle.prototype.orderType;

/**
 * @type {!API.Client.TimeInForce}
 * @export
 */
API.Client.NewOrderSingle.prototype.timeInForce;

/**
 * Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
 * @type {!API.Client.date}
 * @export
 */
API.Client.NewOrderSingle.prototype.expireTime;

/**
 * Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>
 * @type {!Array<!string>}
 * @export
 */
API.Client.NewOrderSingle.prototype.execInst;

/** @enum {string} */
API.Client.NewOrderSingle.Array&lt;!ExecInstEnum&gt; = { 
  MAKER_OR_CANCEL: 'MAKER_OR_CANCEL',
  AUCTION_ONLY: 'AUCTION_ONLY',
  INDICATION_OF_INTEREST: 'INDICATION_OF_INTEREST',
}
