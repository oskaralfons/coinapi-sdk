--[[
  OEML - REST API
 
  This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 
  The version of the OpenAPI document: v1
  
  Generated by: https://openapi-generator.tech
]]

-- orders class
local orders = {}
local orders_mt = {
	__name = "orders";
	__index = orders;
}

local function cast_orders(t)
	return setmetatable(t, orders_mt)
end

local function new_orders(type, exchange_id, data)
	return cast_orders({
		["type"] = type;
		["exchange_id"] = exchange_id;
		["data"] = data;
	})
end

return {
	cast = cast_orders;
	new = new_orders;
}
