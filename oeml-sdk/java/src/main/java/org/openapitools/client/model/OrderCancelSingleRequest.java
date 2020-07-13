/*
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * OrderCancelSingleRequest
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-07-13T10:59:10.382Z[Etc/UTC]")
public class OrderCancelSingleRequest {
  public static final String SERIALIZED_NAME_EXCHANGE_ID = "exchange_id";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ID)
  private String exchangeId;

  public static final String SERIALIZED_NAME_EXCHANGE_ORDER_ID = "exchange_order_id";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ORDER_ID)
  private String exchangeOrderId;

  public static final String SERIALIZED_NAME_CLIENT_ORDER_ID = "client_order_id";
  @SerializedName(SERIALIZED_NAME_CLIENT_ORDER_ID)
  private String clientOrderId;


  public OrderCancelSingleRequest exchangeId(String exchangeId) {
    
    this.exchangeId = exchangeId;
    return this;
  }

   /**
   * Exchange name
   * @return exchangeId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "KRAKEN", value = "Exchange name")

  public String getExchangeId() {
    return exchangeId;
  }


  public void setExchangeId(String exchangeId) {
    this.exchangeId = exchangeId;
  }


  public OrderCancelSingleRequest exchangeOrderId(String exchangeOrderId) {
    
    this.exchangeOrderId = exchangeOrderId;
    return this;
  }

   /**
   * Order Id
   * @return exchangeOrderId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "d8574207d9e3b16a4a5511753eeef1751", value = "Order Id")

  public String getExchangeOrderId() {
    return exchangeOrderId;
  }


  public void setExchangeOrderId(String exchangeOrderId) {
    this.exchangeOrderId = exchangeOrderId;
  }


  public OrderCancelSingleRequest clientOrderId(String clientOrderId) {
    
    this.clientOrderId = clientOrderId;
    return this;
  }

   /**
   * Client order Id
   * @return clientOrderId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "A12345", value = "Client order Id")

  public String getClientOrderId() {
    return clientOrderId;
  }


  public void setClientOrderId(String clientOrderId) {
    this.clientOrderId = clientOrderId;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    OrderCancelSingleRequest orderCancelSingleRequest = (OrderCancelSingleRequest) o;
    return Objects.equals(this.exchangeId, orderCancelSingleRequest.exchangeId) &&
        Objects.equals(this.exchangeOrderId, orderCancelSingleRequest.exchangeOrderId) &&
        Objects.equals(this.clientOrderId, orderCancelSingleRequest.clientOrderId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(exchangeId, exchangeOrderId, clientOrderId);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class OrderCancelSingleRequest {\n");
    sb.append("    exchangeId: ").append(toIndentedString(exchangeId)).append("\n");
    sb.append("    exchangeOrderId: ").append(toIndentedString(exchangeOrderId)).append("\n");
    sb.append("    clientOrderId: ").append(toIndentedString(clientOrderId)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

