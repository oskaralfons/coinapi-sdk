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

#include "ApiConfiguration.h"

namespace org {
namespace openapitools {
namespace client {
namespace api {

ApiConfiguration::ApiConfiguration()
{
}

ApiConfiguration::~ApiConfiguration()
{
}

const web::http::client::http_client_config& ApiConfiguration::getHttpConfig() const
{
    return m_HttpConfig;
}

void ApiConfiguration::setHttpConfig( web::http::client::http_client_config& value )
{
    m_HttpConfig = value;
}

utility::string_t ApiConfiguration::getBaseUrl() const
{
    return m_BaseUrl;
}

void ApiConfiguration::setBaseUrl( const utility::string_t value )
{
    m_BaseUrl = value;
}

utility::string_t ApiConfiguration::getUserAgent() const
{
    return m_UserAgent;
}

void ApiConfiguration::setUserAgent( const utility::string_t value )
{
    m_UserAgent = value;
}

std::map<utility::string_t, utility::string_t>& ApiConfiguration::getDefaultHeaders()
{
    return m_DefaultHeaders;
}

const std::map<utility::string_t, utility::string_t>& ApiConfiguration::getDefaultHeaders() const
{
    return m_DefaultHeaders;
}

utility::string_t ApiConfiguration::getApiKey( const utility::string_t& prefix) const
{
    auto result = m_ApiKeys.find(prefix);
    if( result != m_ApiKeys.end() )
    {
        return result->second;
    }
    return utility::conversions::to_string_t("");
}

void ApiConfiguration::setApiKey( const utility::string_t& prefix, const utility::string_t& apiKey )
{
    m_ApiKeys[prefix] = apiKey;
}

}
}
}
}
