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
import io.swagger.annotations.ApiModel;
import com.google.gson.annotations.SerializedName;

import java.io.IOException;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

/**
 * Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
 */
@JsonAdapter(TimeInForce.Adapter.class)
public enum TimeInForce {
  
  GOOD_TILL_CANCEL("GOOD_TILL_CANCEL"),
  
  GOOD_TILL_TIME_EXCHANGE("GOOD_TILL_TIME_EXCHANGE"),
  
  GOOD_TILL_TIME_OMS("GOOD_TILL_TIME_OMS"),
  
  FILL_OR_KILL("FILL_OR_KILL"),
  
  IMMEDIATE_OR_CANCEL("IMMEDIATE_OR_CANCEL");

  private String value;

  TimeInForce(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static TimeInForce fromValue(String value) {
    for (TimeInForce b : TimeInForce.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }

  public static class Adapter extends TypeAdapter<TimeInForce> {
    @Override
    public void write(final JsonWriter jsonWriter, final TimeInForce enumeration) throws IOException {
      jsonWriter.value(enumeration.getValue());
    }

    @Override
    public TimeInForce read(final JsonReader jsonReader) throws IOException {
      String value = jsonReader.nextString();
      return TimeInForce.fromValue(value);
    }
  }
}

