--  OEML _ REST API
--  This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
--
--  The version of the OpenAPI document: v1
--  
--
--  NOTE: This package is auto generated by OpenAPI-Generator 4.3.1.
--  https://openapi-generator.tech
--  Do not edit the class manually.

with Swagger.Streams;
with Ada.Containers.Vectors;
package .Models is



   type OrdType_Type is
     record
     end record;

   package OrdType_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrdType_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdType_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdType_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdType_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdType_Type_Vectors.Vector);




   type OrdStatus_Type is
     record
     end record;

   package OrdStatus_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrdStatus_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdStatus_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdStatus_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdStatus_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdStatus_Type_Vectors.Vector);




   type OrderCancelAllRequest_Type is
     record
       Exchange_Id : Swagger.UString;
     end record;

   package OrderCancelAllRequest_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrderCancelAllRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelAllRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelAllRequest_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelAllRequest_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelAllRequest_Type_Vectors.Vector);




   type OrderCancelSingleRequest_Type is
     record
       Exchange_Id : Swagger.Nullable_UString;
       Exchange_Order_Id : Swagger.Nullable_UString;
       Client_Order_Id : Swagger.Nullable_UString;
     end record;

   package OrderCancelSingleRequest_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrderCancelSingleRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelSingleRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelSingleRequest_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelSingleRequest_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelSingleRequest_Type_Vectors.Vector);




   type Severity_Type is
     record
     end record;

   package Severity_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Severity_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Severity_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Severity_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Severity_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Severity_Type_Vectors.Vector);



   --  ------------------------------
   --  Success or error message carrier.
   --  ------------------------------
   type Message_Type is
     record
       P_Type : Swagger.Nullable_UString;
       Severity : .Models.Severity_Type;
       Exchange_Id : Swagger.Nullable_UString;
       Message : Swagger.Nullable_UString;
     end record;

   package Message_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Message_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Message_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Message_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Message_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Message_Type_Vectors.Vector);




   type OrdSide_Type is
     record
     end record;

   package OrdSide_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrdSide_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdSide_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdSide_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdSide_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdSide_Type_Vectors.Vector);




   type TimeInForce_Type is
     record
     end record;

   package TimeInForce_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => TimeInForce_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in TimeInForce_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in TimeInForce_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out TimeInForce_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out TimeInForce_Type_Vectors.Vector);




   type BalanceData_Type is
     record
       Id : Swagger.Nullable_UString;
       Symbol_Exchange : Swagger.Nullable_UString;
       Symbol_Coinapi : Swagger.Nullable_UString;
       Balance : float;
       Available : float;
       Locked : float;
       Update_Origin : Swagger.Nullable_UString;
     end record;

   package BalanceData_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => BalanceData_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in BalanceData_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in BalanceData_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out BalanceData_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out BalanceData_Type_Vectors.Vector);




   type Balance_Type is
     record
       P_Type : Swagger.Nullable_UString;
       Exchange_Name : Swagger.Nullable_UString;
       Data : .Models.BalanceData_Type_Vectors.Vector;
     end record;

   package Balance_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Balance_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Balance_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Balance_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Balance_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Balance_Type_Vectors.Vector);




   type Orders_Type is
     record
       P_Type : Swagger.Nullable_UString;
       Exchange_Id : Swagger.Nullable_UString;
       Data : .Models.OrdersData_Type_Vectors.Vector;
     end record;

   package Orders_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Orders_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Orders_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Orders_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Orders_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Orders_Type_Vectors.Vector);




   type NewOrder_Type is
     record
       Exchange_Id : Swagger.UString;
       Client_Order_Id : Swagger.UString;
       Symbol_Exchange : Swagger.Nullable_UString;
       Symbol_Coinapi : Swagger.Nullable_UString;
       Amount_Order : Swagger.Number;
       Price : Swagger.Number;
       Side : .Models.OrdSide_Type;
       Order_Type : .Models.OrdType_Type;
       Time_In_Force : .Models.TimeInForce_Type;
       Expire_Time : Swagger.Nullable_Date;
       Exec_Inst : Swagger.UString_Vectors.Vector;
     end record;

   package NewOrder_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => NewOrder_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in NewOrder_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in NewOrder_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out NewOrder_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out NewOrder_Type_Vectors.Vector);




   type ExecutionReport_Type is
     record
       P_Type : Swagger.Nullable_UString;
       Exchange_Id : Swagger.Nullable_UString;
       Id : Swagger.Nullable_UString;
       Client_Order_Id_Format_Exchange : Swagger.Nullable_UString;
       Exchange_Order_Id : Swagger.Nullable_UString;
       Amount_Open : Swagger.Number;
       Amount_Filled : Swagger.Number;
       Status : .Models.OrdStatus_Type;
       Time_Order : Swagger.UString_Vectors.Vector_Vectors.Vector;
       Error_Message : Swagger.Nullable_UString;
       Client_Order_Id : Swagger.Nullable_UString;
       Symbol_Exchange : Swagger.Nullable_UString;
       Symbol_Coinapi : Swagger.Nullable_UString;
       Amount_Order : Swagger.Number;
       Price : Swagger.Number;
       Side : Swagger.Nullable_UString;
       Order_Type : Swagger.Nullable_UString;
       Time_In_Force : .Models.TimeInForce_Type;
       Expire_Time : Swagger.Nullable_Date;
       Exec_Inst : Swagger.UString_Vectors.Vector;
     end record;

   package ExecutionReport_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => ExecutionReport_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ExecutionReport_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ExecutionReport_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ExecutionReport_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ExecutionReport_Type_Vectors.Vector);




   type Position_Type is
     record
       P_Type : Swagger.Nullable_UString;
       Exchange_Name : Swagger.Nullable_UString;
       Data : .Models.PositionData_Type_Vectors.Vector;
     end record;

   package Position_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Position_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Position_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Position_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Position_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Position_Type_Vectors.Vector);



   --  ------------------------------
   --  Create order validation error (response)
   --  ------------------------------
   type CreateOrderValidationError_Type is
     record
       P_Type : Swagger.Nullable_UString;
       Title : Swagger.Nullable_UString;
       Status : Swagger.Number;
       Trace_Id : Swagger.Nullable_UString;
       Errors : Swagger.Nullable_UString;
     end record;

   package CreateOrderValidationError_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => CreateOrderValidationError_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in CreateOrderValidationError_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in CreateOrderValidationError_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out CreateOrderValidationError_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out CreateOrderValidationError_Type_Vectors.Vector);




   type OrdersData_Type is
     record
       Exchange_Id : Swagger.Nullable_UString;
       Id : Swagger.Nullable_UString;
       Client_Order_Id_Format_Exchange : Swagger.Nullable_UString;
       Exchange_Order_Id : Swagger.Nullable_UString;
       Amount_Open : Swagger.Number;
       Amount_Filled : Swagger.Number;
       Status : .Models.OrdStatus_Type;
       Time_Order : Swagger.UString_Vectors.Vector_Vectors.Vector;
       Error_Message : Swagger.Nullable_UString;
       Client_Order_Id : Swagger.Nullable_UString;
       Symbol_Exchange : Swagger.Nullable_UString;
       Symbol_Coinapi : Swagger.Nullable_UString;
       Amount_Order : Swagger.Number;
       Price : Swagger.Number;
       Side : Swagger.Nullable_UString;
       Order_Type : Swagger.Nullable_UString;
       Time_In_Force : .Models.TimeInForce_Type;
       Expire_Time : Swagger.Nullable_Date;
       Exec_Inst : Swagger.UString_Vectors.Vector;
     end record;

   package OrdersData_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrdersData_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdersData_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdersData_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdersData_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdersData_Type_Vectors.Vector);




   type PositionData_Type is
     record
       Id : Swagger.Nullable_UString;
       Symbol_Exchange : Swagger.Nullable_UString;
       Symbol_Coinapi : Swagger.Nullable_UString;
       Avg_Entry_Price : Swagger.Number;
       Quantity : Swagger.Number;
       Is_Buy : Swagger.Nullable_Boolean;
       Unrealised_Pn_L : Swagger.Number;
       Leverage : Swagger.Number;
       Cross_Margin : Swagger.Nullable_Boolean;
       Liquidation_Price : Swagger.Number;
       Raw_Data : Swagger.Nullable_UString;
     end record;

   package PositionData_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => PositionData_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in PositionData_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in PositionData_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out PositionData_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out PositionData_Type_Vectors.Vector);



end .Models;
