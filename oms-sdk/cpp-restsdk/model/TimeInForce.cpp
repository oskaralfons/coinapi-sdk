/**
 * OMS - REST API
 * Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ###Lifecycle Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. ###Lifecycle 2 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackhama. 
 *
 * The version of the OpenAPI document: v1
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 4.3.1.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "TimeInForce.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



TimeInForce::TimeInForce()
{
}

TimeInForce::~TimeInForce()
{
}

void TimeInForce::validate()
{
    // TODO: implement validation
}

web::json::value TimeInForce::toJson() const
{
    web::json::value val = web::json::value::object();

    
    if (m_value == eTimeInForce::TimeInForce_GOOD_TILL_CANCEL) val = web::json::value::string(U("GOOD_TILL_CANCEL"));
    if (m_value == eTimeInForce::TimeInForce_GOOD_TILL_TIME_EXCHANGE) val = web::json::value::string(U("GOOD_TILL_TIME_EXCHANGE"));
    if (m_value == eTimeInForce::TimeInForce_GOOD_TILL_TIME_OMS) val = web::json::value::string(U("GOOD_TILL_TIME_OMS"));
    if (m_value == eTimeInForce::TimeInForce_FILL_OR_KILL) val = web::json::value::string(U("FILL_OR_KILL"));
    if (m_value == eTimeInForce::TimeInForce_IMMEDIATE_OR_CANCEL) val = web::json::value::string(U("IMMEDIATE_OR_CANCEL"));
    if (m_value == eTimeInForce::TimeInForce_AUCTION_ONLY) val = web::json::value::string(U("AUCTION_ONLY"));
    if (m_value == eTimeInForce::TimeInForce_INDICATION_OF_INTEREST) val = web::json::value::string(U("INDICATION_OF_INTEREST"));

    return val;
}

bool TimeInForce::fromJson(const web::json::value& val)
{
    auto s = val.as_string();

    
    if (s == utility::conversions::to_string_t("GOOD_TILL_CANCEL")) m_value = eTimeInForce::TimeInForce_GOOD_TILL_CANCEL;
    if (s == utility::conversions::to_string_t("GOOD_TILL_TIME_EXCHANGE")) m_value = eTimeInForce::TimeInForce_GOOD_TILL_TIME_EXCHANGE;
    if (s == utility::conversions::to_string_t("GOOD_TILL_TIME_OMS")) m_value = eTimeInForce::TimeInForce_GOOD_TILL_TIME_OMS;
    if (s == utility::conversions::to_string_t("FILL_OR_KILL")) m_value = eTimeInForce::TimeInForce_FILL_OR_KILL;
    if (s == utility::conversions::to_string_t("IMMEDIATE_OR_CANCEL")) m_value = eTimeInForce::TimeInForce_IMMEDIATE_OR_CANCEL;
    if (s == utility::conversions::to_string_t("AUCTION_ONLY")) m_value = eTimeInForce::TimeInForce_AUCTION_ONLY;
    if (s == utility::conversions::to_string_t("INDICATION_OF_INTEREST")) m_value = eTimeInForce::TimeInForce_INDICATION_OF_INTEREST;
    return true;
}

void TimeInForce::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    utility::string_t s;

    
    if (m_value == eTimeInForce::TimeInForce_GOOD_TILL_CANCEL) s = utility::conversions::to_string_t("GOOD_TILL_CANCEL");
    if (m_value == eTimeInForce::TimeInForce_GOOD_TILL_TIME_EXCHANGE) s = utility::conversions::to_string_t("GOOD_TILL_TIME_EXCHANGE");
    if (m_value == eTimeInForce::TimeInForce_GOOD_TILL_TIME_OMS) s = utility::conversions::to_string_t("GOOD_TILL_TIME_OMS");
    if (m_value == eTimeInForce::TimeInForce_FILL_OR_KILL) s = utility::conversions::to_string_t("FILL_OR_KILL");
    if (m_value == eTimeInForce::TimeInForce_IMMEDIATE_OR_CANCEL) s = utility::conversions::to_string_t("IMMEDIATE_OR_CANCEL");
    if (m_value == eTimeInForce::TimeInForce_AUCTION_ONLY) s = utility::conversions::to_string_t("AUCTION_ONLY");
    if (m_value == eTimeInForce::TimeInForce_INDICATION_OF_INTEREST) s = utility::conversions::to_string_t("INDICATION_OF_INTEREST");

    multipart->add(ModelBase::toHttpContent(namePrefix, s));
}

bool TimeInForce::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    {
        utility::string_t s;
        ok = ModelBase::fromHttpContent(multipart->getContent(namePrefix), s);
        eTimeInForce v;

        
        if (s == utility::conversions::to_string_t("GOOD_TILL_CANCEL")) v = eTimeInForce::TimeInForce_GOOD_TILL_CANCEL;
        if (s == utility::conversions::to_string_t("GOOD_TILL_TIME_EXCHANGE")) v = eTimeInForce::TimeInForce_GOOD_TILL_TIME_EXCHANGE;
        if (s == utility::conversions::to_string_t("GOOD_TILL_TIME_OMS")) v = eTimeInForce::TimeInForce_GOOD_TILL_TIME_OMS;
        if (s == utility::conversions::to_string_t("FILL_OR_KILL")) v = eTimeInForce::TimeInForce_FILL_OR_KILL;
        if (s == utility::conversions::to_string_t("IMMEDIATE_OR_CANCEL")) v = eTimeInForce::TimeInForce_IMMEDIATE_OR_CANCEL;
        if (s == utility::conversions::to_string_t("AUCTION_ONLY")) v = eTimeInForce::TimeInForce_AUCTION_ONLY;
        if (s == utility::conversions::to_string_t("INDICATION_OF_INTEREST")) v = eTimeInForce::TimeInForce_INDICATION_OF_INTEREST;

        setValue(v);
    }
    return ok;
}

TimeInForce::eTimeInForce TimeInForce::getValue() const
{
   return m_value;
}

void TimeInForce::setValue(TimeInForce::eTimeInForce const value)
{
   m_value = value;
}


}
}
}
}


