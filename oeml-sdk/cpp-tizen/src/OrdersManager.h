#ifndef _OrdersManager_H_
#define _OrdersManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "CreateOrderValidationError.h"
#include "ExecutionReport.h"
#include "Message.h"
#include "NewOrderSingle.h"
#include "OrderCancelAllRequest.h"
#include "OrderCancelSingleRequest.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Orders Orders
 * \ingroup Operations
 *  @{
 */
class OrdersManager {
public:
	OrdersManager();
	virtual ~OrdersManager();

/*! \brief Cancel all orders. *Synchronous*
 *
 * This request cancels all open orders across all or single specified exchange.
 * \param orderCancelAllRequest  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersCancelAllPostSync(char * accessToken,
	OrderCancelAllRequest orderCancelAllRequest, 
	void(* handler)(Message, Error, void* )
	, void* userData);

/*! \brief Cancel all orders. *Asynchronous*
 *
 * This request cancels all open orders across all or single specified exchange.
 * \param orderCancelAllRequest  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersCancelAllPostAsync(char * accessToken,
	OrderCancelAllRequest orderCancelAllRequest, 
	void(* handler)(Message, Error, void* )
	, void* userData);


/*! \brief Cancel order. *Synchronous*
 *
 * This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
 * \param orderCancelSingleRequest  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersCancelPostSync(char * accessToken,
	OrderCancelSingleRequest orderCancelSingleRequest, 
	void(* handler)(ExecutionReport, Error, void* )
	, void* userData);

/*! \brief Cancel order. *Asynchronous*
 *
 * This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
 * \param orderCancelSingleRequest  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersCancelPostAsync(char * accessToken,
	OrderCancelSingleRequest orderCancelSingleRequest, 
	void(* handler)(ExecutionReport, Error, void* )
	, void* userData);


/*! \brief Get all orders. *Synchronous*
 *
 * Get all current open orders across all or single specified exchange.
 * \param exchangeId Filter the output to the orders from the specific exchange.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<ExecutionReport>, Error, void* )
	, void* userData);

/*! \brief Get all orders. *Asynchronous*
 *
 * Get all current open orders across all or single specified exchange.
 * \param exchangeId Filter the output to the orders from the specific exchange.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<ExecutionReport>, Error, void* )
	, void* userData);


/*! \brief Create new order. *Synchronous*
 *
 * This request creating new order for the specific exchange.
 * \param newOrderSingle  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersPostSync(char * accessToken,
	NewOrderSingle newOrderSingle, 
	void(* handler)(ExecutionReport, Error, void* )
	, void* userData);

/*! \brief Create new order. *Asynchronous*
 *
 * This request creating new order for the specific exchange.
 * \param newOrderSingle  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersPostAsync(char * accessToken,
	NewOrderSingle newOrderSingle, 
	void(* handler)(ExecutionReport, Error, void* )
	, void* userData);


/*! \brief Get order status. *Synchronous*
 *
 * Get the current order status for the specified order. The requested order can no longer be active.
 * \param clientOrderId Order Client Id of the order for which the status is requested. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersStatusClientOrderIdGetSync(char * accessToken,
	std::string clientOrderId, 
	void(* handler)(ExecutionReport, Error, void* )
	, void* userData);

/*! \brief Get order status. *Asynchronous*
 *
 * Get the current order status for the specified order. The requested order can no longer be active.
 * \param clientOrderId Order Client Id of the order for which the status is requested. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersStatusClientOrderIdGetAsync(char * accessToken,
	std::string clientOrderId, 
	void(* handler)(ExecutionReport, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "http://localhost:8080";
	}
};
/** @}*/

}
}
#endif /* OrdersManager_H_ */
