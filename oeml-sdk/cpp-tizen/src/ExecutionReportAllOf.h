/*
 * ExecutionReport_allOf.h
 *
 * The order execution report message.
 */

#ifndef _ExecutionReport_allOf_H_
#define _ExecutionReport_allOf_H_


#include <string>
#include "OrdStatus.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief The order execution report message.
 *
 *  \ingroup Models
 *
 */

class ExecutionReport_allOf : public Object {
public:
	/*! \brief Constructor.
	 */
	ExecutionReport_allOf();
	ExecutionReport_allOf(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExecutionReport_allOf();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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

private:
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

#endif /* _ExecutionReport_allOf_H_ */
