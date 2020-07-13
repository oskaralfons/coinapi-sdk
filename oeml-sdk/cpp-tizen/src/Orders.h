/*
 * Orders.h
 *
 * 
 */

#ifndef _Orders_H_
#define _Orders_H_


#include <string>
#include "Orders_data.h"
#include <list>
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

class Orders : public Object {
public:
	/*! \brief Constructor.
	 */
	Orders();
	Orders(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Orders();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Constant value `snapshotOrders`.
	 */
	std::string getType();

	/*! \brief Set Constant value `snapshotOrders`.
	 */
	void setType(std::string  type);
	/*! \brief Get Exchange identifier.
	 */
	std::string getExchangeId();

	/*! \brief Set Exchange identifier.
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Orders array
	 */
	std::list<Orders_data> getData();

	/*! \brief Set Orders array
	 */
	void setData(std::list <Orders_data> data);

private:
	std::string type;
	std::string exchange_id;
	std::list <Orders_data>data;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Orders_H_ */
