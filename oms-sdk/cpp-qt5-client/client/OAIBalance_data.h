/**
 * OMS - REST API
 * Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ###Lifecycle Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. ###Lifecycle 2 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackhama. 
 *
 * The version of the OpenAPI document: v1
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIBalance_data.h
 *
 * 
 */

#ifndef OAIBalance_data_H
#define OAIBalance_data_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIBalance_data : public OAIObject {
public:
    OAIBalance_data();
    OAIBalance_data(QString json);
    ~OAIBalance_data() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getId() const;
    void setId(const QString &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getSymbolExchange() const;
    void setSymbolExchange(const QString &symbol_exchange);
    bool is_symbol_exchange_Set() const;
    bool is_symbol_exchange_Valid() const;

    QString getSymbolCoinapi() const;
    void setSymbolCoinapi(const QString &symbol_coinapi);
    bool is_symbol_coinapi_Set() const;
    bool is_symbol_coinapi_Valid() const;

    float getBalance() const;
    void setBalance(const float &balance);
    bool is_balance_Set() const;
    bool is_balance_Valid() const;

    float getAvailable() const;
    void setAvailable(const float &available);
    bool is_available_Set() const;
    bool is_available_Valid() const;

    float getLocked() const;
    void setLocked(const float &locked);
    bool is_locked_Set() const;
    bool is_locked_Valid() const;

    QString getUpdateOrigin() const;
    void setUpdateOrigin(const QString &update_origin);
    bool is_update_origin_Set() const;
    bool is_update_origin_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString symbol_exchange;
    bool m_symbol_exchange_isSet;
    bool m_symbol_exchange_isValid;

    QString symbol_coinapi;
    bool m_symbol_coinapi_isSet;
    bool m_symbol_coinapi_isValid;

    float balance;
    bool m_balance_isSet;
    bool m_balance_isValid;

    float available;
    bool m_available_isSet;
    bool m_available_isValid;

    float locked;
    bool m_locked_isSet;
    bool m_locked_isValid;

    QString update_origin;
    bool m_update_origin_isSet;
    bool m_update_origin_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIBalance_data)

#endif // OAIBalance_data_H
