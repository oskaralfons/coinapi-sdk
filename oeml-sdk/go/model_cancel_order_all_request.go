/*
 * OEML - REST API
 *
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * API version: v1
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi
// CancelOrderAllRequest struct for CancelOrderAllRequest
type CancelOrderAllRequest struct {
	// Exchange identifier from which active orders should be canceled.
	ExchangeId string `json:"exchange_id"`
}