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

package org.openapitools.client;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Date;
import org.openapitools.client.model.*;

public class JsonUtil {
  public static GsonBuilder gsonBuilder;

  static {
    gsonBuilder = new GsonBuilder();
    gsonBuilder.serializeNulls();
    gsonBuilder.setDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
    gsonBuilder.registerTypeAdapter(Date.class, new JsonDeserializer<Date>() {
      public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
        return new Date(json.getAsJsonPrimitive().getAsLong());
      }
    });
  }

  public static Gson getGson() {
    return gsonBuilder.create();
  }

  public static String serialize(Object obj){
    return getGson().toJson(obj);
  }

  public static <T> T deserializeToList(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getListTypeForDeserialization(cls));
  }

  public static <T> T deserializeToObject(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getTypeForDeserialization(cls));
  }

  public static Type getListTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("Balance".equalsIgnoreCase(className)) {
      return new TypeToken<List<Balance>>(){}.getType();
    }
    
    if ("BalanceData".equalsIgnoreCase(className)) {
      return new TypeToken<List<BalanceData>>(){}.getType();
    }
    
    if ("Message".equalsIgnoreCase(className)) {
      return new TypeToken<List<Message>>(){}.getType();
    }
    
    if ("OrdSide".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrdSide>>(){}.getType();
    }
    
    if ("OrdStatus".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrdStatus>>(){}.getType();
    }
    
    if ("OrdType".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrdType>>(){}.getType();
    }
    
    if ("OrderCancelAllRequest".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrderCancelAllRequest>>(){}.getType();
    }
    
    if ("OrderCancelSingleRequest".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrderCancelSingleRequest>>(){}.getType();
    }
    
    if ("OrderExecutionReport".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrderExecutionReport>>(){}.getType();
    }
    
    if ("OrderExecutionReportAllOf".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrderExecutionReportAllOf>>(){}.getType();
    }
    
    if ("OrderNewSingleRequest".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrderNewSingleRequest>>(){}.getType();
    }
    
    if ("Position".equalsIgnoreCase(className)) {
      return new TypeToken<List<Position>>(){}.getType();
    }
    
    if ("PositionData".equalsIgnoreCase(className)) {
      return new TypeToken<List<PositionData>>(){}.getType();
    }
    
    if ("Severity".equalsIgnoreCase(className)) {
      return new TypeToken<List<Severity>>(){}.getType();
    }
    
    if ("TimeInForce".equalsIgnoreCase(className)) {
      return new TypeToken<List<TimeInForce>>(){}.getType();
    }
    
    if ("ValidationError".equalsIgnoreCase(className)) {
      return new TypeToken<List<ValidationError>>(){}.getType();
    }
    
    return new TypeToken<List<Object>>(){}.getType();
  }

  public static Type getTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("Balance".equalsIgnoreCase(className)) {
      return new TypeToken<Balance>(){}.getType();
    }
    
    if ("BalanceData".equalsIgnoreCase(className)) {
      return new TypeToken<BalanceData>(){}.getType();
    }
    
    if ("Message".equalsIgnoreCase(className)) {
      return new TypeToken<Message>(){}.getType();
    }
    
    if ("OrdSide".equalsIgnoreCase(className)) {
      return new TypeToken<OrdSide>(){}.getType();
    }
    
    if ("OrdStatus".equalsIgnoreCase(className)) {
      return new TypeToken<OrdStatus>(){}.getType();
    }
    
    if ("OrdType".equalsIgnoreCase(className)) {
      return new TypeToken<OrdType>(){}.getType();
    }
    
    if ("OrderCancelAllRequest".equalsIgnoreCase(className)) {
      return new TypeToken<OrderCancelAllRequest>(){}.getType();
    }
    
    if ("OrderCancelSingleRequest".equalsIgnoreCase(className)) {
      return new TypeToken<OrderCancelSingleRequest>(){}.getType();
    }
    
    if ("OrderExecutionReport".equalsIgnoreCase(className)) {
      return new TypeToken<OrderExecutionReport>(){}.getType();
    }
    
    if ("OrderExecutionReportAllOf".equalsIgnoreCase(className)) {
      return new TypeToken<OrderExecutionReportAllOf>(){}.getType();
    }
    
    if ("OrderNewSingleRequest".equalsIgnoreCase(className)) {
      return new TypeToken<OrderNewSingleRequest>(){}.getType();
    }
    
    if ("Position".equalsIgnoreCase(className)) {
      return new TypeToken<Position>(){}.getType();
    }
    
    if ("PositionData".equalsIgnoreCase(className)) {
      return new TypeToken<PositionData>(){}.getType();
    }
    
    if ("Severity".equalsIgnoreCase(className)) {
      return new TypeToken<Severity>(){}.getType();
    }
    
    if ("TimeInForce".equalsIgnoreCase(className)) {
      return new TypeToken<TimeInForce>(){}.getType();
    }
    
    if ("ValidationError".equalsIgnoreCase(className)) {
      return new TypeToken<ValidationError>(){}.getType();
    }
    
    return new TypeToken<Object>(){}.getType();
  }

};
