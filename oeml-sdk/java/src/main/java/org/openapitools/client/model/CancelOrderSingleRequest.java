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
 * CancelOrderSingleRequest
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-07-13T12:15:43.157Z[Etc/UTC]")
public class CancelOrderSingleRequest {
  public static final String SERIALIZED_NAME_EXCHANGE_ID = "exchange_id";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ID)
  private String exchangeId;

  public static final String SERIALIZED_NAME_EXCHANGE_ORDER_ID = "exchange_order_id";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ORDER_ID)
  private String exchangeOrderId;

  public static final String SERIALIZED_NAME_CLIENT_ORDER_ID = "client_order_id";
  @SerializedName(SERIALIZED_NAME_CLIENT_ORDER_ID)
  private String clientOrderId;


  public CancelOrderSingleRequest exchangeId(String exchangeId) {
    
    this.exchangeId = exchangeId;
    return this;
  }

   /**
   * Exchange identifier.
   * @return exchangeId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "KRAKEN", value = "Exchange identifier.")

  public String getExchangeId() {
    return exchangeId;
  }


  public void setExchangeId(String exchangeId) {
    this.exchangeId = exchangeId;
  }


  public CancelOrderSingleRequest exchangeOrderId(String exchangeOrderId) {
    
    this.exchangeOrderId = exchangeOrderId;
    return this;
  }

   /**
   * The unique identifier of the order assigned by the exchange.
   * @return exchangeOrderId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "3456456754", value = "The unique identifier of the order assigned by the exchange.")

  public String getExchangeOrderId() {
    return exchangeOrderId;
  }


  public void setExchangeOrderId(String exchangeOrderId) {
    this.exchangeOrderId = exchangeOrderId;
  }


  public CancelOrderSingleRequest clientOrderId(String clientOrderId) {
    
    this.clientOrderId = clientOrderId;
    return this;
  }

   /**
   * The unique identifier of the order assigned by the client.
   * @return clientOrderId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b", value = "The unique identifier of the order assigned by the client.")

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
    CancelOrderSingleRequest cancelOrderSingleRequest = (CancelOrderSingleRequest) o;
    return Objects.equals(this.exchangeId, cancelOrderSingleRequest.exchangeId) &&
        Objects.equals(this.exchangeOrderId, cancelOrderSingleRequest.exchangeOrderId) &&
        Objects.equals(this.clientOrderId, cancelOrderSingleRequest.clientOrderId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(exchangeId, exchangeOrderId, clientOrderId);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CancelOrderSingleRequest {\n");
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

