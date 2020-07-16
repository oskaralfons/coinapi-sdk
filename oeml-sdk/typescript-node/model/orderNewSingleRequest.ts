/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from '../api';
import { OrdSide } from './ordSide';
import { OrdType } from './ordType';
import { TimeInForce } from './timeInForce';

/**
* The new order message.
*/
export class OrderNewSingleRequest {
    /**
    * Exchange identifier used to identify the routing destination.
    */
    'exchangeId': string;
    /**
    * The unique identifier of the order assigned by the client.
    */
    'clientOrderId': string;
    /**
    * Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    */
    'symbolIdExchange'?: string;
    /**
    * CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    */
    'symbolIdCoinapi'?: string;
    /**
    * Order quantity.
    */
    'amountOrder': number;
    /**
    * Order price.
    */
    'price': number;
    'side': OrdSide;
    'orderType': OrdType;
    'timeInForce': TimeInForce;
    /**
    * Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
    */
    'expireTime'?: string;
    /**
    * Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
    */
    'execInst'?: Array<OrderNewSingleRequest.ExecInstEnum>;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "exchangeId",
            "baseName": "exchange_id",
            "type": "string"
        },
        {
            "name": "clientOrderId",
            "baseName": "client_order_id",
            "type": "string"
        },
        {
            "name": "symbolIdExchange",
            "baseName": "symbol_id_exchange",
            "type": "string"
        },
        {
            "name": "symbolIdCoinapi",
            "baseName": "symbol_id_coinapi",
            "type": "string"
        },
        {
            "name": "amountOrder",
            "baseName": "amount_order",
            "type": "number"
        },
        {
            "name": "price",
            "baseName": "price",
            "type": "number"
        },
        {
            "name": "side",
            "baseName": "side",
            "type": "OrdSide"
        },
        {
            "name": "orderType",
            "baseName": "order_type",
            "type": "OrdType"
        },
        {
            "name": "timeInForce",
            "baseName": "time_in_force",
            "type": "TimeInForce"
        },
        {
            "name": "expireTime",
            "baseName": "expire_time",
            "type": "string"
        },
        {
            "name": "execInst",
            "baseName": "exec_inst",
            "type": "Array<OrderNewSingleRequest.ExecInstEnum>"
        }    ];

    static getAttributeTypeMap() {
        return OrderNewSingleRequest.attributeTypeMap;
    }
}

export namespace OrderNewSingleRequest {
    export enum ExecInstEnum {
        MAKERORCANCEL = <any> 'MAKER_OR_CANCEL',
        AUCTIONONLY = <any> 'AUCTION_ONLY',
        INDICATIONOFINTEREST = <any> 'INDICATION_OF_INTEREST'
    }
}
