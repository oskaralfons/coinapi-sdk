#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CreateOrderValidationError.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CreateOrderValidationError::CreateOrderValidationError()
{
	//__init();
}

CreateOrderValidationError::~CreateOrderValidationError()
{
	//__cleanup();
}

void
CreateOrderValidationError::__init()
{
	//type = std::string();
	//title = std::string();
	//status = double(0);
	//traceId = std::string();
	//errors = std::string();
}

void
CreateOrderValidationError::__cleanup()
{
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(title != NULL) {
	//
	//delete title;
	//title = NULL;
	//}
	//if(status != NULL) {
	//
	//delete status;
	//status = NULL;
	//}
	//if(traceId != NULL) {
	//
	//delete traceId;
	//traceId = NULL;
	//}
	//if(errors != NULL) {
	//
	//delete errors;
	//errors = NULL;
	//}
	//
}

void
CreateOrderValidationError::fromJson(char* jsonStr)
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
	const gchar *titleKey = "title";
	node = json_object_get_member(pJsonObject, titleKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&title, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *statusKey = "status";
	node = json_object_get_member(pJsonObject, statusKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&status, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&status);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *traceIdKey = "traceId";
	node = json_object_get_member(pJsonObject, traceIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&traceId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *errorsKey = "errors";
	node = json_object_get_member(pJsonObject, errorsKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&errors, node, "std::string", "");
		} else {
			
		}
	}
}

CreateOrderValidationError::CreateOrderValidationError(char* json)
{
	this->fromJson(json);
}

char*
CreateOrderValidationError::toJson()
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
		std::string obj = getTitle();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *titleKey = "title";
	json_object_set_member(pJsonObject, titleKey, node);
	if (isprimitive("long long")) {
		long long obj = getStatus();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getStatus());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *statusKey = "status";
	json_object_set_member(pJsonObject, statusKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTraceId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *traceIdKey = "traceId";
	json_object_set_member(pJsonObject, traceIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getErrors();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *errorsKey = "errors";
	json_object_set_member(pJsonObject, errorsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CreateOrderValidationError::getType()
{
	return type;
}

void
CreateOrderValidationError::setType(std::string  type)
{
	this->type = type;
}

std::string
CreateOrderValidationError::getTitle()
{
	return title;
}

void
CreateOrderValidationError::setTitle(std::string  title)
{
	this->title = title;
}

long long
CreateOrderValidationError::getStatus()
{
	return status;
}

void
CreateOrderValidationError::setStatus(long long  status)
{
	this->status = status;
}

std::string
CreateOrderValidationError::getTraceId()
{
	return traceId;
}

void
CreateOrderValidationError::setTraceId(std::string  traceId)
{
	this->traceId = traceId;
}

std::string
CreateOrderValidationError::getErrors()
{
	return errors;
}

void
CreateOrderValidationError::setErrors(std::string  errors)
{
	this->errors = errors;
}


