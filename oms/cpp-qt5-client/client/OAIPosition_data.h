/**
 * OMS - REST API ...@
 * OMS Project
 *
 * The version of the OpenAPI document: v1
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIPosition_data.h
 *
 * 
 */

#ifndef OAIPosition_data_H
#define OAIPosition_data_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIPosition_data : public OAIObject {
public:
    OAIPosition_data();
    OAIPosition_data(QString json);
    ~OAIPosition_data() override;

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

    double getAvgEntryPrice() const;
    void setAvgEntryPrice(const double &avg_entry_price);
    bool is_avg_entry_price_Set() const;
    bool is_avg_entry_price_Valid() const;

    double getQuantity() const;
    void setQuantity(const double &quantity);
    bool is_quantity_Set() const;
    bool is_quantity_Valid() const;

    bool isIsBuy() const;
    void setIsBuy(const bool &is_buy);
    bool is_is_buy_Set() const;
    bool is_is_buy_Valid() const;

    double getUnrealisedPnL() const;
    void setUnrealisedPnL(const double &unrealised_pn_l);
    bool is_unrealised_pn_l_Set() const;
    bool is_unrealised_pn_l_Valid() const;

    double getLeverage() const;
    void setLeverage(const double &leverage);
    bool is_leverage_Set() const;
    bool is_leverage_Valid() const;

    bool isCrossMargin() const;
    void setCrossMargin(const bool &cross_margin);
    bool is_cross_margin_Set() const;
    bool is_cross_margin_Valid() const;

    double getLiquidationPrice() const;
    void setLiquidationPrice(const double &liquidation_price);
    bool is_liquidation_price_Set() const;
    bool is_liquidation_price_Valid() const;

    QString getRawData() const;
    void setRawData(const QString &raw_data);
    bool is_raw_data_Set() const;
    bool is_raw_data_Valid() const;

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

    double avg_entry_price;
    bool m_avg_entry_price_isSet;
    bool m_avg_entry_price_isValid;

    double quantity;
    bool m_quantity_isSet;
    bool m_quantity_isValid;

    bool is_buy;
    bool m_is_buy_isSet;
    bool m_is_buy_isValid;

    double unrealised_pn_l;
    bool m_unrealised_pn_l_isSet;
    bool m_unrealised_pn_l_isValid;

    double leverage;
    bool m_leverage_isSet;
    bool m_leverage_isValid;

    bool cross_margin;
    bool m_cross_margin_isSet;
    bool m_cross_margin_isValid;

    double liquidation_price;
    bool m_liquidation_price_isSet;
    bool m_liquidation_price_isValid;

    QString raw_data;
    bool m_raw_data_isSet;
    bool m_raw_data_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIPosition_data)

#endif // OAIPosition_data_H