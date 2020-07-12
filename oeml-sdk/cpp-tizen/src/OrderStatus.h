/*
 * OrderStatus.h
 *
 * Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML Order Lifecycle&lt;/a&gt; 
 */

#ifndef _OrderStatus_H_
#define _OrderStatus_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Order statuses and the lifecycle are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML Order Lifecycle</a> 
 *
 *  \ingroup Models
 *
 */

class OrderStatus : public Object {
public:
	/*! \brief Constructor.
	 */
	OrderStatus();
	OrderStatus(char* str);

	/*! \brief Destructor.
	 */
	virtual ~OrderStatus();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);


private:
	void __init();
	void __cleanup();

};
}
}

#endif /* _OrderStatus_H_ */
