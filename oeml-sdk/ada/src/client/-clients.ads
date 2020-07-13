--  OEML _ REST API
--  This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
--
--  The version of the OpenAPI document: v1
--  
--
--  NOTE: This package is auto generated by OpenAPI-Generator 4.3.1.
--  https://openapi-generator.tech
--  Do not edit the class manually.

with .Models;
with Swagger.Clients;
package .Clients is

   type Client_Type is new Swagger.Clients.Client_Type with null record;

   --  Get balances
   --  Returns all of your balances, including available balance.
   procedure V1_Balances_Get
      (Client : in out Client_Type;
       Exchange_Id : in Swagger.Nullable_UString;
       Result : out .Models.Balance_Type_Vectors.Vector);

   --  Cancel all orders
   --  This request cancels all open orders across all or single specified exchange.
   procedure V1_Orders_Cancel_All_Post
      (Client : in out Client_Type;
       Order_Cancel_All_Request_Type : in .Models.OrderCancelAllRequest_Type;
       Result : out .Models.Message_Type);

   --  Cancel order
   --  This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
   procedure V1_Orders_Cancel_Post
      (Client : in out Client_Type;
       Order_Cancel_Single_Request_Type : in .Models.OrderCancelSingleRequest_Type;
       Result : out .Models.ExecutionReport_Type);

   --  Get all orders
   --  Get all current open orders across all or single specified exchange.
   procedure V1_Orders_Get
      (Client : in out Client_Type;
       Exchange_Id : in Swagger.Nullable_UString;
       Result : out .Models.Orders_Type);

   --  Create new order
   --  This request creating new order for the specific exchange.
   procedure V1_Orders_Post
      (Client : in out Client_Type;
       New_Order_Type : in .Models.NewOrder_Type;
       Result : out .Models.ExecutionReport_Type);

   --  Get order status
   --  Get the current order status for the specified order. The requested order can no longer be active.
   procedure V1_Orders_Status_Client_Order_Id_Get
      (Client : in out Client_Type;
       Client_Order_Id : in Swagger.UString;
       Result : out .Models.ExecutionReport_Type);

   --  Get positions
   --  Returns all of your positions.
   procedure V1_Positions_Get
      (Client : in out Client_Type;
       Exchange_Id : in Swagger.Nullable_UString;
       Result : out .Models.Position_Type_Vectors.Vector);

end .Clients;
