/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * The version of the OpenAPI document: v1
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 4.3.1.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OrdersApi.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_API_OrdersApi_H_
#define ORG_OPENAPITOOLS_CLIENT_API_OrdersApi_H_


#include "../ApiClient.h"

#include "CreateOrderValidationError.h"
#include "ExecutionReport.h"
#include "Message.h"
#include "NewOrder.h"
#include "OrderCancelAllRequest.h"
#include "OrderCancelSingleRequest.h"
#include <cpprest/details/basic_types.h>


#include <boost/optional.hpp>

namespace org {
namespace openapitools {
namespace client {
namespace api {

using namespace org::openapitools::client::model;



class  OrdersApi 
{
public:

    explicit OrdersApi( std::shared_ptr<const ApiClient> apiClient );

    virtual ~OrdersApi();

    /// <summary>
    /// Cancel all orders
    /// </summary>
    /// <remarks>
    /// This request cancels all open orders across all or single specified exchange.
    /// </remarks>
    /// <param name="orderCancelAllRequest"></param>
    pplx::task<std::shared_ptr<Message>> v1OrdersCancelAllPost(
        std::shared_ptr<OrderCancelAllRequest> orderCancelAllRequest
    ) const;
    /// <summary>
    /// Cancel order
    /// </summary>
    /// <remarks>
    /// This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
    /// </remarks>
    /// <param name="orderCancelSingleRequest"></param>
    pplx::task<std::shared_ptr<ExecutionReport>> v1OrdersCancelPost(
        std::shared_ptr<OrderCancelSingleRequest> orderCancelSingleRequest
    ) const;
    /// <summary>
    /// Get all orders
    /// </summary>
    /// <remarks>
    /// Get all current open orders across all or single specified exchange.
    /// </remarks>
    /// <param name="exchangeId">Filter the output to the orders from the specific exchange. (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<NewOrder>>> v1OrdersGet(
        boost::optional<utility::string_t> exchangeId
    ) const;
    /// <summary>
    /// Create new order
    /// </summary>
    /// <remarks>
    /// This request creating new order for the specific exchange.
    /// </remarks>
    /// <param name="newOrder"></param>
    pplx::task<std::shared_ptr<ExecutionReport>> v1OrdersPost(
        std::shared_ptr<NewOrder> newOrder
    ) const;
    /// <summary>
    /// Get order status
    /// </summary>
    /// <remarks>
    /// Get the current order status for the specified order. The requested order can no longer be active.
    /// </remarks>
    /// <param name="clientOrderId">Order Client Id of the order for which the status is requested.</param>
    pplx::task<std::shared_ptr<ExecutionReport>> v1OrdersStatusClientOrderIdGet(
        utility::string_t clientOrderId
    ) const;

protected:
    std::shared_ptr<const ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_API_OrdersApi_H_ */

