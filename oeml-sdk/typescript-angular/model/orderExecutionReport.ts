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
import { OrdSide } from './ordSide';
import { OrdStatus } from './ordStatus';
import { OrdType } from './ordType';
import { TimeInForce } from './timeInForce';
import { OrderNewSingleRequest } from './orderNewSingleRequest';
import { OrderExecutionReportAllOf } from './orderExecutionReportAllOf';


/**
 * The order execution report object.
 */
export interface OrderExecutionReport { 
    /**
     * Exchange identifier used to identify the routing destination.
     */
    exchange_id: string;
    /**
     * The unique identifier of the order assigned by the client.
     */
    client_order_id: string;
    /**
     * Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
     */
    symbol_id_exchange?: string;
    /**
     * CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
     */
    symbol_id_coinapi?: string;
    /**
     * Order quantity.
     */
    amount_order: number;
    /**
     * Order price.
     */
    price: number;
    side: OrdSide;
    order_type: OrdType;
    time_in_force: TimeInForce;
    /**
     * Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
     */
    expire_time?: string;
    /**
     * Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
     */
    exec_inst?: Array<OrderExecutionReport.ExecInstEnum>;
    /**
     * The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
     */
    client_order_id_format_exchange: string;
    /**
     * Unique identifier of the order assigned by the exchange or executing system.
     */
    exchange_order_id?: string;
    /**
     * Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
     */
    amount_open: number;
    /**
     * Total quantity filled.
     */
    amount_filled: number;
    status: OrdStatus;
    /**
     * Timestamped history of order status changes.
     */
    time_order: Array<Array<string>>;
    /**
     * Error message
     */
    error_message?: string;
}
export namespace OrderExecutionReport {
    export type ExecInstEnum = 'MAKER_OR_CANCEL' | 'AUCTION_ONLY' | 'INDICATION_OF_INTEREST';
    export const ExecInstEnum = {
        MAKERORCANCEL: 'MAKER_OR_CANCEL' as ExecInstEnum,
        AUCTIONONLY: 'AUCTION_ONLY' as ExecInstEnum,
        INDICATIONOFINTEREST: 'INDICATION_OF_INTEREST' as ExecInstEnum
    };
}


