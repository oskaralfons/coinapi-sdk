/*
 * ExecutionReport.h
 *
 * 
 */

#ifndef _ExecutionReport_H_
#define _ExecutionReport_H_


#include <string>
#include "Date.h"
#include "OrdStatus.h"
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

class ExecutionReport : public Object {
public:
	/*! \brief Constructor.
	 */
	ExecutionReport();
	ExecutionReport(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExecutionReport();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Result type name
	 */
	std::string getType();

	/*! \brief Set Result type name
	 */
	void setType(std::string  type);
	/*! \brief Get Exchange name
	 */
	std::string getExchangeId();

	/*! \brief Set Exchange name
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Client unique identifier for the trade.
	 */
	std::string getId();

	/*! \brief Set Client unique identifier for the trade.
	 */
	void setId(std::string  id);
	/*! \brief Get Hash client id
	 */
	std::string getClientOrderIdFormatExchange();

	/*! \brief Set Hash client id
	 */
	void setClientOrderIdFormatExchange(std::string  client_order_id_format_exchange);
	/*! \brief Get Exchange order id
	 */
	std::string getExchangeOrderId();

	/*! \brief Set Exchange order id
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
	/*! \brief Get History of order status changes
	 */
	std::list<std::list> getTimeOrder();

	/*! \brief Set History of order status changes
	 */
	void setTimeOrder(std::list <std::list> time_order);
	/*! \brief Get Error message
	 */
	std::string getErrorMessage();

	/*! \brief Set Error message
	 */
	void setErrorMessage(std::string  error_message);
	/*! \brief Get Client unique identifier for the trade.
	 */
	std::string getClientOrderId();

	/*! \brief Set Client unique identifier for the trade.
	 */
	void setClientOrderId(std::string  client_order_id);
	/*! \brief Get The symbol of the order.
	 */
	std::string getSymbolExchange();

	/*! \brief Set The symbol of the order.
	 */
	void setSymbolExchange(std::string  symbol_exchange);
	/*! \brief Get The CoinAPI symbol of the order.
	 */
	std::string getSymbolCoinapi();

	/*! \brief Set The CoinAPI symbol of the order.
	 */
	void setSymbolCoinapi(std::string  symbol_coinapi);
	/*! \brief Get Quoted decimal amount to purchase.
	 */
	long long getAmountOrder();

	/*! \brief Set Quoted decimal amount to purchase.
	 */
	void setAmountOrder(long long  amount_order);
	/*! \brief Get Quoted decimal amount to spend per unit.
	 */
	long long getPrice();

	/*! \brief Set Quoted decimal amount to spend per unit.
	 */
	void setPrice(long long  price);
	/*! \brief Get Buy or Sell
	 */
	std::string getSide();

	/*! \brief Set Buy or Sell
	 */
	void setSide(std::string  side);
	/*! \brief Get The order type.
	 */
	std::string getOrderType();

	/*! \brief Set The order type.
	 */
	void setOrderType(std::string  order_type);
	/*! \brief Get 
	 */
	TimeInForce getTimeInForce();

	/*! \brief Set 
	 */
	void setTimeInForce(TimeInForce  time_in_force);
	/*! \brief Get Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
	 */
	Date getExpireTime();

	/*! \brief Set Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
	 */
	void setExpireTime(Date  expire_time);
	/*! \brief Get Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>
	 */
	std::list<std::string> getExecInst();

	/*! \brief Set Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>
	 */
	void setExecInst(std::list <std::string> exec_inst);

private:
	std::string type;
	std::string exchange_id;
	std::string id;
	std::string client_order_id_format_exchange;
	std::string exchange_order_id;
	long long amount_open;
	long long amount_filled;
	OrdStatus status;
	std::list <std::list>time_order;
	std::string error_message;
	std::string client_order_id;
	std::string symbol_exchange;
	std::string symbol_coinapi;
	long long amount_order;
	long long price;
	std::string side;
	std::string order_type;
	TimeInForce time_in_force;
	Date expire_time;
	std::list <std::string>exec_inst;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExecutionReport_H_ */
