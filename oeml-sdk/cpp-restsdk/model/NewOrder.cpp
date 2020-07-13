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



#include "NewOrder.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




NewOrder::NewOrder()
{
    m_Exchange_id = utility::conversions::to_string_t("");
    m_Exchange_idIsSet = false;
    m_Client_order_id = utility::conversions::to_string_t("");
    m_Client_order_idIsSet = false;
    m_Symbol_exchange = utility::conversions::to_string_t("");
    m_Symbol_exchangeIsSet = false;
    m_Symbol_coinapi = utility::conversions::to_string_t("");
    m_Symbol_coinapiIsSet = false;
    m_Amount_order = 0.0;
    m_Amount_orderIsSet = false;
    m_Price = 0.0;
    m_PriceIsSet = false;
    m_SideIsSet = false;
    m_Order_typeIsSet = false;
    m_Time_in_forceIsSet = false;
    m_Expire_timeIsSet = false;
    m_Exec_instIsSet = false;
}

NewOrder::~NewOrder()
{
}

void NewOrder::validate()
{
    // TODO: implement validation
}

web::json::value NewOrder::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_Exchange_idIsSet)
    {
        val[utility::conversions::to_string_t("exchange_id")] = ModelBase::toJson(m_Exchange_id);
    }
    if(m_Client_order_idIsSet)
    {
        val[utility::conversions::to_string_t("client_order_id")] = ModelBase::toJson(m_Client_order_id);
    }
    if(m_Symbol_exchangeIsSet)
    {
        val[utility::conversions::to_string_t("symbol_exchange")] = ModelBase::toJson(m_Symbol_exchange);
    }
    if(m_Symbol_coinapiIsSet)
    {
        val[utility::conversions::to_string_t("symbol_coinapi")] = ModelBase::toJson(m_Symbol_coinapi);
    }
    if(m_Amount_orderIsSet)
    {
        val[utility::conversions::to_string_t("amount_order")] = ModelBase::toJson(m_Amount_order);
    }
    if(m_PriceIsSet)
    {
        val[utility::conversions::to_string_t("price")] = ModelBase::toJson(m_Price);
    }
    if(m_SideIsSet)
    {
        val[utility::conversions::to_string_t("side")] = ModelBase::toJson(m_Side);
    }
    if(m_Order_typeIsSet)
    {
        val[utility::conversions::to_string_t("order_type")] = ModelBase::toJson(m_Order_type);
    }
    if(m_Time_in_forceIsSet)
    {
        val[utility::conversions::to_string_t("time_in_force")] = ModelBase::toJson(m_Time_in_force);
    }
    if(m_Expire_timeIsSet)
    {
        val[utility::conversions::to_string_t("expire_time")] = ModelBase::toJson(m_Expire_time);
    }
    if(m_Exec_instIsSet)
    {
        val[utility::conversions::to_string_t("exec_inst")] = ModelBase::toJson(m_Exec_inst);
    }

    return val;
}

bool NewOrder::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t("exchange_id")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("exchange_id"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_exchange_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_exchange_id);
            setExchangeId(refVal_exchange_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("client_order_id")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("client_order_id"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_client_order_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_client_order_id);
            setClientOrderId(refVal_client_order_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("symbol_exchange")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("symbol_exchange"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_symbol_exchange;
            ok &= ModelBase::fromJson(fieldValue, refVal_symbol_exchange);
            setSymbolExchange(refVal_symbol_exchange);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("symbol_coinapi")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("symbol_coinapi"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_symbol_coinapi;
            ok &= ModelBase::fromJson(fieldValue, refVal_symbol_coinapi);
            setSymbolCoinapi(refVal_symbol_coinapi);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("amount_order")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("amount_order"));
        if(!fieldValue.is_null())
        {
            double refVal_amount_order;
            ok &= ModelBase::fromJson(fieldValue, refVal_amount_order);
            setAmountOrder(refVal_amount_order);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("price")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("price"));
        if(!fieldValue.is_null())
        {
            double refVal_price;
            ok &= ModelBase::fromJson(fieldValue, refVal_price);
            setPrice(refVal_price);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("side")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("side"));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<OrdSide> refVal_side;
            ok &= ModelBase::fromJson(fieldValue, refVal_side);
            setSide(refVal_side);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("order_type")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("order_type"));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<OrdType> refVal_order_type;
            ok &= ModelBase::fromJson(fieldValue, refVal_order_type);
            setOrderType(refVal_order_type);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("time_in_force")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("time_in_force"));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<TimeInForce> refVal_time_in_force;
            ok &= ModelBase::fromJson(fieldValue, refVal_time_in_force);
            setTimeInForce(refVal_time_in_force);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("expire_time")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("expire_time"));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<utility::datetime> refVal_expire_time;
            ok &= ModelBase::fromJson(fieldValue, refVal_expire_time);
            setExpireTime(refVal_expire_time);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("exec_inst")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("exec_inst"));
        if(!fieldValue.is_null())
        {
            std::vector<utility::string_t> refVal_exec_inst;
            ok &= ModelBase::fromJson(fieldValue, refVal_exec_inst);
            setExecInst(refVal_exec_inst);
        }
    }
    return ok;
}

void NewOrder::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    if(m_Exchange_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("exchange_id"), m_Exchange_id));
    }
    if(m_Client_order_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("client_order_id"), m_Client_order_id));
    }
    if(m_Symbol_exchangeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("symbol_exchange"), m_Symbol_exchange));
    }
    if(m_Symbol_coinapiIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("symbol_coinapi"), m_Symbol_coinapi));
    }
    if(m_Amount_orderIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("amount_order"), m_Amount_order));
    }
    if(m_PriceIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("price"), m_Price));
    }
    if(m_SideIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("side"), m_Side));
    }
    if(m_Order_typeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("order_type"), m_Order_type));
    }
    if(m_Time_in_forceIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("time_in_force"), m_Time_in_force));
    }
    if(m_Expire_timeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("expire_time"), m_Expire_time));
    }
    if(m_Exec_instIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("exec_inst"), m_Exec_inst));
    }
}

bool NewOrder::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("exchange_id")))
    {
        utility::string_t refVal_exchange_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("exchange_id")), refVal_exchange_id );
        setExchangeId(refVal_exchange_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("client_order_id")))
    {
        utility::string_t refVal_client_order_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("client_order_id")), refVal_client_order_id );
        setClientOrderId(refVal_client_order_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("symbol_exchange")))
    {
        utility::string_t refVal_symbol_exchange;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("symbol_exchange")), refVal_symbol_exchange );
        setSymbolExchange(refVal_symbol_exchange);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("symbol_coinapi")))
    {
        utility::string_t refVal_symbol_coinapi;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("symbol_coinapi")), refVal_symbol_coinapi );
        setSymbolCoinapi(refVal_symbol_coinapi);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("amount_order")))
    {
        double refVal_amount_order;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("amount_order")), refVal_amount_order );
        setAmountOrder(refVal_amount_order);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("price")))
    {
        double refVal_price;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("price")), refVal_price );
        setPrice(refVal_price);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("side")))
    {
        std::shared_ptr<OrdSide> refVal_side;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("side")), refVal_side );
        setSide(refVal_side);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("order_type")))
    {
        std::shared_ptr<OrdType> refVal_order_type;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("order_type")), refVal_order_type );
        setOrderType(refVal_order_type);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("time_in_force")))
    {
        std::shared_ptr<TimeInForce> refVal_time_in_force;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("time_in_force")), refVal_time_in_force );
        setTimeInForce(refVal_time_in_force);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("expire_time")))
    {
        std::shared_ptr<utility::datetime> refVal_expire_time;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("expire_time")), refVal_expire_time );
        setExpireTime(refVal_expire_time);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("exec_inst")))
    {
        std::vector<utility::string_t> refVal_exec_inst;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("exec_inst")), refVal_exec_inst );
        setExecInst(refVal_exec_inst);
    }
    return ok;
}

utility::string_t NewOrder::getExchangeId() const
{
    return m_Exchange_id;
}

void NewOrder::setExchangeId(const utility::string_t& value)
{
    m_Exchange_id = value;
    m_Exchange_idIsSet = true;
}

bool NewOrder::exchangeIdIsSet() const
{
    return m_Exchange_idIsSet;
}

void NewOrder::unsetExchange_id()
{
    m_Exchange_idIsSet = false;
}
utility::string_t NewOrder::getClientOrderId() const
{
    return m_Client_order_id;
}

void NewOrder::setClientOrderId(const utility::string_t& value)
{
    m_Client_order_id = value;
    m_Client_order_idIsSet = true;
}

bool NewOrder::clientOrderIdIsSet() const
{
    return m_Client_order_idIsSet;
}

void NewOrder::unsetClient_order_id()
{
    m_Client_order_idIsSet = false;
}
utility::string_t NewOrder::getSymbolExchange() const
{
    return m_Symbol_exchange;
}

void NewOrder::setSymbolExchange(const utility::string_t& value)
{
    m_Symbol_exchange = value;
    m_Symbol_exchangeIsSet = true;
}

bool NewOrder::symbolExchangeIsSet() const
{
    return m_Symbol_exchangeIsSet;
}

void NewOrder::unsetSymbol_exchange()
{
    m_Symbol_exchangeIsSet = false;
}
utility::string_t NewOrder::getSymbolCoinapi() const
{
    return m_Symbol_coinapi;
}

void NewOrder::setSymbolCoinapi(const utility::string_t& value)
{
    m_Symbol_coinapi = value;
    m_Symbol_coinapiIsSet = true;
}

bool NewOrder::symbolCoinapiIsSet() const
{
    return m_Symbol_coinapiIsSet;
}

void NewOrder::unsetSymbol_coinapi()
{
    m_Symbol_coinapiIsSet = false;
}
double NewOrder::getAmountOrder() const
{
    return m_Amount_order;
}

void NewOrder::setAmountOrder(double value)
{
    m_Amount_order = value;
    m_Amount_orderIsSet = true;
}

bool NewOrder::amountOrderIsSet() const
{
    return m_Amount_orderIsSet;
}

void NewOrder::unsetAmount_order()
{
    m_Amount_orderIsSet = false;
}
double NewOrder::getPrice() const
{
    return m_Price;
}

void NewOrder::setPrice(double value)
{
    m_Price = value;
    m_PriceIsSet = true;
}

bool NewOrder::priceIsSet() const
{
    return m_PriceIsSet;
}

void NewOrder::unsetPrice()
{
    m_PriceIsSet = false;
}
std::shared_ptr<OrdSide> NewOrder::getSide() const
{
    return m_Side;
}

void NewOrder::setSide(const std::shared_ptr<OrdSide>& value)
{
    m_Side = value;
    m_SideIsSet = true;
}

bool NewOrder::sideIsSet() const
{
    return m_SideIsSet;
}

void NewOrder::unsetSide()
{
    m_SideIsSet = false;
}
std::shared_ptr<OrdType> NewOrder::getOrderType() const
{
    return m_Order_type;
}

void NewOrder::setOrderType(const std::shared_ptr<OrdType>& value)
{
    m_Order_type = value;
    m_Order_typeIsSet = true;
}

bool NewOrder::orderTypeIsSet() const
{
    return m_Order_typeIsSet;
}

void NewOrder::unsetOrder_type()
{
    m_Order_typeIsSet = false;
}
std::shared_ptr<TimeInForce> NewOrder::getTimeInForce() const
{
    return m_Time_in_force;
}

void NewOrder::setTimeInForce(const std::shared_ptr<TimeInForce>& value)
{
    m_Time_in_force = value;
    m_Time_in_forceIsSet = true;
}

bool NewOrder::timeInForceIsSet() const
{
    return m_Time_in_forceIsSet;
}

void NewOrder::unsetTime_in_force()
{
    m_Time_in_forceIsSet = false;
}
std::shared_ptr<utility::datetime> NewOrder::getExpireTime() const
{
    return m_Expire_time;
}

void NewOrder::setExpireTime(const std::shared_ptr<utility::datetime>& value)
{
    m_Expire_time = value;
    m_Expire_timeIsSet = true;
}

bool NewOrder::expireTimeIsSet() const
{
    return m_Expire_timeIsSet;
}

void NewOrder::unsetExpire_time()
{
    m_Expire_timeIsSet = false;
}
std::vector<utility::string_t>& NewOrder::getExecInst()
{
    return m_Exec_inst;
}

void NewOrder::setExecInst(const std::vector<utility::string_t>& value)
{
    m_Exec_inst = value;
    m_Exec_instIsSet = true;
}

bool NewOrder::execInstIsSet() const
{
    return m_Exec_instIsSet;
}

void NewOrder::unsetExec_inst()
{
    m_Exec_instIsSet = false;
}
}
}
}
}


