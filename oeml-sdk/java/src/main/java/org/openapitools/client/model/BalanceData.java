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
 * BalanceData
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-07-13T13:09:42.943Z[Etc/UTC]")
public class BalanceData {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_SYMBOL_EXCHANGE = "symbol_exchange";
  @SerializedName(SERIALIZED_NAME_SYMBOL_EXCHANGE)
  private String symbolExchange;

  public static final String SERIALIZED_NAME_SYMBOL_COINAPI = "symbol_coinapi";
  @SerializedName(SERIALIZED_NAME_SYMBOL_COINAPI)
  private String symbolCoinapi;

  public static final String SERIALIZED_NAME_BALANCE = "balance";
  @SerializedName(SERIALIZED_NAME_BALANCE)
  private Float balance;

  public static final String SERIALIZED_NAME_AVAILABLE = "available";
  @SerializedName(SERIALIZED_NAME_AVAILABLE)
  private Float available;

  public static final String SERIALIZED_NAME_LOCKED = "locked";
  @SerializedName(SERIALIZED_NAME_LOCKED)
  private Float locked;

  /**
   * Source of the last modification. 
   */
  @JsonAdapter(UpdateOriginEnum.Adapter.class)
  public enum UpdateOriginEnum {
    INITIALIZATION("INITIALIZATION"),
    
    BALANCE_MANAGER("BALANCE_MANAGER"),
    
    EXCHANGE("EXCHANGE");

    private String value;

    UpdateOriginEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static UpdateOriginEnum fromValue(String value) {
      for (UpdateOriginEnum b : UpdateOriginEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<UpdateOriginEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final UpdateOriginEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public UpdateOriginEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return UpdateOriginEnum.fromValue(value);
      }
    }
  }

  public static final String SERIALIZED_NAME_UPDATE_ORIGIN = "update_origin";
  @SerializedName(SERIALIZED_NAME_UPDATE_ORIGIN)
  private UpdateOriginEnum updateOrigin;


  public BalanceData id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Exchange identifier.
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "BTC", value = "Exchange identifier.")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public BalanceData symbolExchange(String symbolExchange) {
    
    this.symbolExchange = symbolExchange;
    return this;
  }

   /**
   * Exchange currency code.
   * @return symbolExchange
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "BTC", value = "Exchange currency code.")

  public String getSymbolExchange() {
    return symbolExchange;
  }


  public void setSymbolExchange(String symbolExchange) {
    this.symbolExchange = symbolExchange;
  }


  public BalanceData symbolCoinapi(String symbolCoinapi) {
    
    this.symbolCoinapi = symbolCoinapi;
    return this;
  }

   /**
   * CoinAPI currency code.
   * @return symbolCoinapi
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "BTC", value = "CoinAPI currency code.")

  public String getSymbolCoinapi() {
    return symbolCoinapi;
  }


  public void setSymbolCoinapi(String symbolCoinapi) {
    this.symbolCoinapi = symbolCoinapi;
  }


  public BalanceData balance(Float balance) {
    
    this.balance = balance;
    return this;
  }

   /**
   * Value of the current total currency balance on the exchange.
   * @return balance
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.00134444", value = "Value of the current total currency balance on the exchange.")

  public Float getBalance() {
    return balance;
  }


  public void setBalance(Float balance) {
    this.balance = balance;
  }


  public BalanceData available(Float available) {
    
    this.available = available;
    return this;
  }

   /**
   * Value of the current available currency balance on the exchange that can be used as collateral.
   * @return available
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.00134444", value = "Value of the current available currency balance on the exchange that can be used as collateral.")

  public Float getAvailable() {
    return available;
  }


  public void setAvailable(Float available) {
    this.available = available;
  }


  public BalanceData locked(Float locked) {
    
    this.locked = locked;
    return this;
  }

   /**
   * Value of the current locked currency balance by the exchange.
   * @return locked
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.0", value = "Value of the current locked currency balance by the exchange.")

  public Float getLocked() {
    return locked;
  }


  public void setLocked(Float locked) {
    this.locked = locked;
  }


  public BalanceData updateOrigin(UpdateOriginEnum updateOrigin) {
    
    this.updateOrigin = updateOrigin;
    return this;
  }

   /**
   * Source of the last modification. 
   * @return updateOrigin
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "EXCHANGE", value = "Source of the last modification. ")

  public UpdateOriginEnum getUpdateOrigin() {
    return updateOrigin;
  }


  public void setUpdateOrigin(UpdateOriginEnum updateOrigin) {
    this.updateOrigin = updateOrigin;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BalanceData balanceData = (BalanceData) o;
    return Objects.equals(this.id, balanceData.id) &&
        Objects.equals(this.symbolExchange, balanceData.symbolExchange) &&
        Objects.equals(this.symbolCoinapi, balanceData.symbolCoinapi) &&
        Objects.equals(this.balance, balanceData.balance) &&
        Objects.equals(this.available, balanceData.available) &&
        Objects.equals(this.locked, balanceData.locked) &&
        Objects.equals(this.updateOrigin, balanceData.updateOrigin);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, symbolExchange, symbolCoinapi, balance, available, locked, updateOrigin);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BalanceData {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    symbolExchange: ").append(toIndentedString(symbolExchange)).append("\n");
    sb.append("    symbolCoinapi: ").append(toIndentedString(symbolCoinapi)).append("\n");
    sb.append("    balance: ").append(toIndentedString(balance)).append("\n");
    sb.append("    available: ").append(toIndentedString(available)).append("\n");
    sb.append("    locked: ").append(toIndentedString(locked)).append("\n");
    sb.append("    updateOrigin: ").append(toIndentedString(updateOrigin)).append("\n");
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

