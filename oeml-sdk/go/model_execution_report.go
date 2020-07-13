/*
 * OEML - REST API
 *
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * API version: v1
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi
// ExecutionReport struct for ExecutionReport
type ExecutionReport struct {
	// Exchange name
	ExchangeId string `json:"exchange_id,omitempty"`
	// Client unique identifier for the trade.
	Id string `json:"id,omitempty"`
	// Hash client id
	ClientOrderIdFormatExchange string `json:"client_order_id_format_exchange,omitempty"`
	// Exchange order id
	ExchangeOrderId string `json:"exchange_order_id,omitempty"`
	// Amount open
	AmountOpen float32 `json:"amount_open,omitempty"`
	// Amount filled
	AmountFilled float32 `json:"amount_filled,omitempty"`
	Status OrdStatus `json:"status,omitempty"`
	// History of order status changes
	TimeOrder [][]string `json:"time_order,omitempty"`
	// Error message
	ErrorMessage string `json:"error_message,omitempty"`
	// Client unique identifier for the trade.
	ClientOrderId string `json:"client_order_id,omitempty"`
	// The symbol of the order.
	SymbolExchange string `json:"symbol_exchange,omitempty"`
	// The CoinAPI symbol of the order.
	SymbolCoinapi string `json:"symbol_coinapi,omitempty"`
	// Quoted decimal amount to purchase.
	AmountOrder float32 `json:"amount_order,omitempty"`
	// Quoted decimal amount to spend per unit.
	Price float32 `json:"price,omitempty"`
	// Buy or Sell
	Side string `json:"side,omitempty"`
	// The order type.
	OrderType string `json:"order_type,omitempty"`
	TimeInForce TimeInForce `json:"time_in_force,omitempty"`
	// Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
	ExpireTime string `json:"expire_time,omitempty"`
	// Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>
	ExecInst []string `json:"exec_inst,omitempty"`
}
