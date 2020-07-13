--[[
  OEML - REST API
 
  This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 
  The version of the OpenAPI document: v1
  
  Generated by: https://openapi-generator.tech
]]

-- ord_side class
local ord_side = {}
local ord_side_mt = {
	__name = "ord_side";
	__index = ord_side;
}

local function cast_ord_side(t)
	return setmetatable(t, ord_side_mt)
end

local function new_ord_side()
	return cast_ord_side({
	})
end

return {
	cast = cast_ord_side;
	new = new_ord_side;
}
