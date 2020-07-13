/*
 * Message.h
 *
 * 
 */

#ifndef _Message_H_
#define _Message_H_


#include <string>
#include "Severity.h"
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Message : public Object {
public:
	/*! \brief Constructor.
	 */
	Message();
	Message(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Message();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Type of message.
	 */
	std::string getType();

	/*! \brief Set Type of message.
	 */
	void setType(std::string  type);
	/*! \brief Get 
	 */
	Severity getSeverity();

	/*! \brief Set 
	 */
	void setSeverity(Severity  severity);
	/*! \brief Get If message related exchange then identifier of this exchange.
	 */
	std::string getExchangeId();

	/*! \brief Set If message related exchange then identifier of this exchange.
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Sucess message
	 */
	std::string getMessage();

	/*! \brief Set Sucess message
	 */
	void setMessage(std::string  message);

private:
	std::string type;
	Severity severity;
	std::string exchange_id;
	std::string message;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Message_H_ */
