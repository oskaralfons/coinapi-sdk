/*
 * NewOrder.h
 *
 * 
 */

#ifndef _NewOrder_H_
#define _NewOrder_H_


#include <string>
#include "Date.h"
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

class NewOrder : public Object {
public:
	/*! \brief Constructor.
	 */
	NewOrder();
	NewOrder(char* str);

	/*! \brief Destructor.
	 */
	virtual ~NewOrder();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Exchange name
	 */
	std::string getExchangeId();

	/*! \brief Set Exchange name
	 */
	void setExchangeId(std::string  exchange_id);
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
	std::string exchange_id;
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

#endif /* _NewOrder_H_ */
