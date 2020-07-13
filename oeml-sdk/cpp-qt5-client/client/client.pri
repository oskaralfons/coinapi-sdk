QT += network

HEADERS += \
# Models
    $${PWD}/OAIBalance.h \
    $${PWD}/OAIBalance_data.h \
    $${PWD}/OAICreateOrderValidationError.h \
    $${PWD}/OAIExecutionReport.h \
    $${PWD}/OAIMessage.h \
    $${PWD}/OAINewOrder.h \
    $${PWD}/OAIOrdStatus.h \
    $${PWD}/OAIOrder.h \
    $${PWD}/OAIOrderCancelAllRequest.h \
    $${PWD}/OAIOrderCancelSingleRequest.h \
    $${PWD}/OAIOrder_data.h \
    $${PWD}/OAIPosition.h \
    $${PWD}/OAIPosition_data.h \
    $${PWD}/OAISeverity.h \
    $${PWD}/OAITimeInForce.h \
# APIs
    $${PWD}/OAIBalancesApi.h \
    $${PWD}/OAIOrdersApi.h \
    $${PWD}/OAIPositionsApi.h \
# Others
    $${PWD}/OAIHelpers.h \
    $${PWD}/OAIHttpRequest.h \
    $${PWD}/OAIObject.h \
    $${PWD}/OAIEnum.h \
    $${PWD}/OAIHttpFileElement.h

SOURCES += \
# Models
    $${PWD}/OAIBalance.cpp \
    $${PWD}/OAIBalance_data.cpp \
    $${PWD}/OAICreateOrderValidationError.cpp \
    $${PWD}/OAIExecutionReport.cpp \
    $${PWD}/OAIMessage.cpp \
    $${PWD}/OAINewOrder.cpp \
    $${PWD}/OAIOrdStatus.cpp \
    $${PWD}/OAIOrder.cpp \
    $${PWD}/OAIOrderCancelAllRequest.cpp \
    $${PWD}/OAIOrderCancelSingleRequest.cpp \
    $${PWD}/OAIOrder_data.cpp \
    $${PWD}/OAIPosition.cpp \
    $${PWD}/OAIPosition_data.cpp \
    $${PWD}/OAISeverity.cpp \
    $${PWD}/OAITimeInForce.cpp \
# APIs
    $${PWD}/OAIBalancesApi.cpp \
    $${PWD}/OAIOrdersApi.cpp \
    $${PWD}/OAIPositionsApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp \
    $${PWD}/OAIHttpFileElement.cpp

