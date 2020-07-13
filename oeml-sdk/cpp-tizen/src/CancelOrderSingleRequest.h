/*
 * CancelOrderSingleRequest.h
 *
 * 
 */

#ifndef _CancelOrderSingleRequest_H_
#define _CancelOrderSingleRequest_H_


#include <string>
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

class CancelOrderSingleRequest : public Object {
public:
	/*! \brief Constructor.
	 */
	CancelOrderSingleRequest();
	CancelOrderSingleRequest(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CancelOrderSingleRequest();

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
	/*! \brief Get The unique identifier of the order assigned by the exchange.
	 */
	std::string getExchangeOrderId();

	/*! \brief Set The unique identifier of the order assigned by the exchange.
	 */
	void setExchangeOrderId(std::string  exchange_order_id);
	/*! \brief Get The unique identifier of the order assigned by the client.
	 */
	std::string getClientOrderId();

	/*! \brief Set The unique identifier of the order assigned by the client.
	 */
	void setClientOrderId(std::string  client_order_id);

private:
	std::string exchange_id;
	std::string exchange_order_id;
	std::string client_order_id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CancelOrderSingleRequest_H_ */
