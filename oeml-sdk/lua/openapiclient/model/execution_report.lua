--[[
  OEML - REST API
 
  This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 
  The version of the OpenAPI document: v1
  
  Generated by: https://openapi-generator.tech
]]

-- execution_report class
local execution_report = {}
local execution_report_mt = {
	__name = "execution_report";
	__index = execution_report;
}

local function cast_execution_report(t)
	return setmetatable(t, execution_report_mt)
end

local function new_execution_report(exchange_id, id, client_order_id_format_exchange, exchange_order_id, amount_open, amount_filled, status, time_order, error_message, client_order_id, symbol_exchange, symbol_coinapi, amount_order, price, side, order_type, time_in_force, expire_time, exec_inst)
	return cast_execution_report({
		["exchange_id"] = exchange_id;
		["id"] = id;
		["client_order_id_format_exchange"] = client_order_id_format_exchange;
		["exchange_order_id"] = exchange_order_id;
		["amount_open"] = amount_open;
		["amount_filled"] = amount_filled;
		["status"] = status;
		["time_order"] = time_order;
		["error_message"] = error_message;
		["client_order_id"] = client_order_id;
		["symbol_exchange"] = symbol_exchange;
		["symbol_coinapi"] = symbol_coinapi;
		["amount_order"] = amount_order;
		["price"] = price;
		["side"] = side;
		["order_type"] = order_type;
		["time_in_force"] = time_in_force;
		["expire_time"] = expire_time;
		["exec_inst"] = exec_inst;
	})
end

return {
	cast = cast_execution_report;
	new = new_execution_report;
}