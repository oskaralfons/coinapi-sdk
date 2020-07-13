/*
 * CancelOrderAllRequest.h
 *
 * 
 */

#ifndef _CancelOrderAllRequest_H_
#define _CancelOrderAllRequest_H_


#include <string>
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

class CancelOrderAllRequest : public Object {
public:
	/*! \brief Constructor.
	 */
	CancelOrderAllRequest();
	CancelOrderAllRequest(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CancelOrderAllRequest();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Exchange identifier from which active orders should be canceled.
	 */
	std::string getExchangeId();

	/*! \brief Set Exchange identifier from which active orders should be canceled.
	 */
	void setExchangeId(std::string  exchange_id);

private:
	std::string exchange_id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CancelOrderAllRequest_H_ */
