#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Orders.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Orders::Orders()
{
	//__init();
}

Orders::~Orders()
{
	//__cleanup();
}

void
Orders::__init()
{
	//type = std::string();
	//exchange_id = std::string();
	//new std::list()std::list> data;
}

void
Orders::__cleanup()
{
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(data != NULL) {
	//data.RemoveAll(true);
	//delete data;
	//data = NULL;
	//}
	//
}

void
Orders::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *exchange_idKey = "exchange_id";
	node = json_object_get_member(pJsonObject, exchange_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchange_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dataKey = "data";
	node = json_object_get_member(pJsonObject, dataKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Orders_data> new_list;
			Orders_data inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Orders_data")) {
					jsonToValue(&inst, temp_json, "Orders_data", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			data = new_list;
		}
		
	}
}

Orders::Orders(char* json)
{
	this->fromJson(json);
}

char*
Orders::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getExchangeId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_idKey = "exchange_id";
	json_object_set_member(pJsonObject, exchange_idKey, node);
	if (isprimitive("Orders_data")) {
		list<Orders_data> new_list = static_cast<list <Orders_data> > (getData());
		node = converttoJson(&new_list, "Orders_data", "array");
	} else {
		node = json_node_alloc();
		list<Orders_data> new_list = static_cast<list <Orders_data> > (getData());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Orders_data>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Orders_data obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *dataKey = "data";
	json_object_set_member(pJsonObject, dataKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Orders::getType()
{
	return type;
}

void
Orders::setType(std::string  type)
{
	this->type = type;
}

std::string
Orders::getExchangeId()
{
	return exchange_id;
}

void
Orders::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::list<Orders_data>
Orders::getData()
{
	return data;
}

void
Orders::setData(std::list <Orders_data> data)
{
	this->data = data;
}


