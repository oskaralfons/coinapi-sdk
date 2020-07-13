goog.provide('API.Client.Balance_data');

/**
 * @record
 */
API.Client.BalanceData = function() {}

/**
 * Exchange identifier.
 * @type {!string}
 * @export
 */
API.Client.BalanceData.prototype.id;

/**
 * Exchange currency code.
 * @type {!string}
 * @export
 */
API.Client.BalanceData.prototype.symbolExchange;

/**
 * CoinAPI currency code.
 * @type {!string}
 * @export
 */
API.Client.BalanceData.prototype.symbolCoinapi;

/**
 * Value of the current total currency balance on the exchange.
 * @type {!number}
 * @export
 */
API.Client.BalanceData.prototype.balance;

/**
 * Value of the current available currency balance on the exchange that can be used as collateral.
 * @type {!number}
 * @export
 */
API.Client.BalanceData.prototype.available;

/**
 * Value of the current locked currency balance by the exchange.
 * @type {!number}
 * @export
 */
API.Client.BalanceData.prototype.locked;

/**
 * Source of the last modification. 
 * @type {!string}
 * @export
 */
API.Client.BalanceData.prototype.updateOrigin;

/** @enum {string} */
API.Client.BalanceData.UpdateOriginEnum = { 
  INITIALIZATION: 'INITIALIZATION',
  BALANCE_MANAGER: 'BALANCE_MANAGER',
  EXCHANGE: 'EXCHANGE',
}
