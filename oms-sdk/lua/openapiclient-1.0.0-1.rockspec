package = "openapiclient"
version = "1.0.0-1"
source = {
	url = "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
}

description = {
	summary = "API client genreated by OpenAPI Generator",
	detailed = [[
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ###Lifecycle Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. ###Lifecycle 2 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackhama. ]],
	homepage = "https://openapi-generator.tech",
	license = "Unlicense",
	maintainer = "OpenAPI Generator contributors",
}

dependencies = {
	"lua >= 5.2",
	"http",
	"dkjson",
	"basexx"
}

build = {
	type = "builtin",
	modules = {
		["openapiclient.api.balances_api"] = "openapiclient/api/balances_api.lua";
		["openapiclient.api.orders_api"] = "openapiclient/api/orders_api.lua";
		["openapiclient.api.positions_api"] = "openapiclient/api/positions_api.lua";
		["openapiclient.model.balance"] = "openapiclient/model/balance.lua";
		["openapiclient.model.balance_data"] = "openapiclient/model/balance_data.lua";
		["openapiclient.model.cancel_all_order"] = "openapiclient/model/cancel_all_order.lua";
		["openapiclient.model.cancel_order"] = "openapiclient/model/cancel_order.lua";
		["openapiclient.model.create_order400"] = "openapiclient/model/create_order400.lua";
		["openapiclient.model.messages"] = "openapiclient/model/messages.lua";
		["openapiclient.model.messages_info"] = "openapiclient/model/messages_info.lua";
		["openapiclient.model.messages_ok"] = "openapiclient/model/messages_ok.lua";
		["openapiclient.model.new_order"] = "openapiclient/model/new_order.lua";
		["openapiclient.model.order"] = "openapiclient/model/order.lua";
		["openapiclient.model.order_data"] = "openapiclient/model/order_data.lua";
		["openapiclient.model.order_live"] = "openapiclient/model/order_live.lua";
		["openapiclient.model.order_status"] = "openapiclient/model/order_status.lua";
		["openapiclient.model.position"] = "openapiclient/model/position.lua";
		["openapiclient.model.position_data"] = "openapiclient/model/position_data.lua";
		["openapiclient.model.time_in_force"] = "openapiclient/model/time_in_force.lua";
	}
}
