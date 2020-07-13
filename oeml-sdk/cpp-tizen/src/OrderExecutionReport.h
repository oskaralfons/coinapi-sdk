/*
 * OrderExecutionReport.h
 *
 * 
 */

#ifndef _OrderExecutionReport_H_
#define _OrderExecutionReport_H_


#include <string>
#include "Date.h"
#include "NewOrderSingle.h"
#include "OrdSide.h"
#include "OrdStatus.h"
#include "OrdType.h"
#include "OrderExecutionReport_allOf.h"
#include "TimeInForce.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class OrderExecutionReport : public Object {
public:
	/*! \brief Constructor.
	 */
	OrderExecutionReport();
	OrderExecutionReport(char* str);

	/*! \brief Destructor.
	 */
	virtual ~OrderExecutionReport();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Exchange identifier.
	 */
	std::string getExchangeId();

	/*! \brief Set Exchange identifier.
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get The unique identifier of the order assigned by the client.
	 */
	std::string getClientOrderId();

	/*! \brief Set The unique identifier of the order assigned by the client.
	 */
	void setClientOrderId(std::string  client_order_id);
	/*! \brief Get Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) are required to identify the market for the new order.
	 */
	std::string getSymbolExchange();

	/*! \brief Set Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) are required to identify the market for the new order.
	 */
	void setSymbolExchange(std::string  symbol_exchange);
	/*! \brief Get CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) are required to identify the market for the new order.
	 */
	std::string getSymbolCoinapi();

	/*! \brief Set CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) are required to identify the market for the new order.
	 */
	void setSymbolCoinapi(std::string  symbol_coinapi);
	/*! \brief Get Order quantity.
	 */
	long long getAmountOrder();

	/*! \brief Set Order quantity.
	 */
	void setAmountOrder(long long  amount_order);
	/*! \brief Get Order price.
	 */
	long long getPrice();

	/*! \brief Set Order price.
	 */
	void setPrice(long long  price);
	/*! \brief Get 
	 */
	OrdSide getSide();

	/*! \brief Set 
	 */
	void setSide(OrdSide  side);
	/*! \brief Get 
	 */
	OrdType getOrderType();

	/*! \brief Set 
	 */
	void setOrderType(OrdType  order_type);
	/*! \brief Get 
	 */
	TimeInForce getTimeInForce();

	/*! \brief Set 
	 */
	void setTimeInForce(TimeInForce  time_in_force);
	/*! \brief Get Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
	 */
	Date getExpireTime();

	/*! \brief Set Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
	 */
	void setExpireTime(Date  expire_time);
	/*! \brief Get Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
	 */
	std::list<std::string> getExecInst();

	/*! \brief Set Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
	 */
	void setExecInst(std::list <std::string> exec_inst);
	/*! \brief Get The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
	 */
	std::string getClientOrderIdFormatExchange();

	/*! \brief Set The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
	 */
	void setClientOrderIdFormatExchange(std::string  client_order_id_format_exchange);
	/*! \brief Get The unique identifier of the order assigned by the exchange.
	 */
	std::string getExchangeOrderId();

	/*! \brief Set The unique identifier of the order assigned by the exchange.
	 */
	void setExchangeOrderId(std::string  exchange_order_id);
	/*! \brief Get Amount open
	 */
	long long getAmountOpen();

	/*! \brief Set Amount open
	 */
	void setAmountOpen(long long  amount_open);
	/*! \brief Get Amount filled
	 */
	long long getAmountFilled();

	/*! \brief Set Amount filled
	 */
	void setAmountFilled(long long  amount_filled);
	/*! \brief Get 
	 */
	OrdStatus getStatus();

	/*! \brief Set 
	 */
	void setStatus(OrdStatus  status);
	/*! \brief Get Timestamped history of order status changes.
	 */
	std::list<std::list> getTimeOrder();

	/*! \brief Set Timestamped history of order status changes.
	 */
	void setTimeOrder(std::list <std::list> time_order);
	/*! \brief Get Error message
	 */
	std::string getErrorMessage();

	/*! \brief Set Error message
	 */
	void setErrorMessage(std::string  error_message);

private:
	std::string exchange_id;
	std::string client_order_id;
	std::string symbol_exchange;
	std::string symbol_coinapi;
	long long amount_order;
	long long price;
	OrdSide side;
	OrdType order_type;
	TimeInForce time_in_force;
	Date expire_time;
	std::list <std::string>exec_inst;
	std::string client_order_id_format_exchange;
	std::string exchange_order_id;
	long long amount_open;
	long long amount_filled;
	OrdStatus status;
	std::list <std::list>time_order;
	std::string error_message;
	void __init();
	void __cleanup();

};
}
}

#endif /* _OrderExecutionReport_H_ */
