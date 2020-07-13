/*
 * NewOrderSingle.h
 *
 * The new order message.
 */

#ifndef _NewOrderSingle_H_
#define _NewOrderSingle_H_


#include <string>
#include "Date.h"
#include "OrdSide.h"
#include "OrdType.h"
#include "TimeInForce.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief The new order message.
 *
 *  \ingroup Models
 *
 */

class NewOrderSingle : public Object {
public:
	/*! \brief Constructor.
	 */
	NewOrderSingle();
	NewOrderSingle(char* str);

	/*! \brief Destructor.
	 */
	virtual ~NewOrderSingle();

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
	/*! \brief Get Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the new order.
	 */
	std::string getSymbolExchange();

	/*! \brief Set Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the new order.
	 */
	void setSymbolExchange(std::string  symbol_exchange);
	/*! \brief Get CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the new order.
	 */
	std::string getSymbolCoinapi();

	/*! \brief Set CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the new order.
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
	void __init();
	void __cleanup();

};
}
}

#endif /* _NewOrderSingle_H_ */
