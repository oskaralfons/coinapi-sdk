{-
   OEML - REST API

   This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 

   OpenAPI Version: 3.0.0
   OEML - REST API API version: v1
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : OEML-REST.Lens
-}

{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module OEML-REST.ModelLens where

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Data, Typeable)
import qualified Data.Map as Map
import qualified Data.Set as Set
import qualified Data.Time as TI

import Data.Text (Text)

import Prelude (($), (.),(<$>),(<*>),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

import OEML-REST.Model
import OEML-REST.Core


-- * Balance

-- | 'balanceType' Lens
balanceTypeL :: Lens_' Balance (Maybe Text)
balanceTypeL f Balance{..} = (\balanceType -> Balance { balanceType, ..} ) <$> f balanceType
{-# INLINE balanceTypeL #-}

-- | 'balanceExchangeName' Lens
balanceExchangeNameL :: Lens_' Balance (Maybe Text)
balanceExchangeNameL f Balance{..} = (\balanceExchangeName -> Balance { balanceExchangeName, ..} ) <$> f balanceExchangeName
{-# INLINE balanceExchangeNameL #-}

-- | 'balanceData' Lens
balanceDataL :: Lens_' Balance (Maybe [BalanceData])
balanceDataL f Balance{..} = (\balanceData -> Balance { balanceData, ..} ) <$> f balanceData
{-# INLINE balanceDataL #-}



-- * BalanceData

-- | 'balanceDataId' Lens
balanceDataIdL :: Lens_' BalanceData (Maybe Text)
balanceDataIdL f BalanceData{..} = (\balanceDataId -> BalanceData { balanceDataId, ..} ) <$> f balanceDataId
{-# INLINE balanceDataIdL #-}

-- | 'balanceDataSymbolExchange' Lens
balanceDataSymbolExchangeL :: Lens_' BalanceData (Maybe Text)
balanceDataSymbolExchangeL f BalanceData{..} = (\balanceDataSymbolExchange -> BalanceData { balanceDataSymbolExchange, ..} ) <$> f balanceDataSymbolExchange
{-# INLINE balanceDataSymbolExchangeL #-}

-- | 'balanceDataSymbolCoinapi' Lens
balanceDataSymbolCoinapiL :: Lens_' BalanceData (Maybe Text)
balanceDataSymbolCoinapiL f BalanceData{..} = (\balanceDataSymbolCoinapi -> BalanceData { balanceDataSymbolCoinapi, ..} ) <$> f balanceDataSymbolCoinapi
{-# INLINE balanceDataSymbolCoinapiL #-}

-- | 'balanceDataBalance' Lens
balanceDataBalanceL :: Lens_' BalanceData (Maybe Float)
balanceDataBalanceL f BalanceData{..} = (\balanceDataBalance -> BalanceData { balanceDataBalance, ..} ) <$> f balanceDataBalance
{-# INLINE balanceDataBalanceL #-}

-- | 'balanceDataAvailable' Lens
balanceDataAvailableL :: Lens_' BalanceData (Maybe Float)
balanceDataAvailableL f BalanceData{..} = (\balanceDataAvailable -> BalanceData { balanceDataAvailable, ..} ) <$> f balanceDataAvailable
{-# INLINE balanceDataAvailableL #-}

-- | 'balanceDataLocked' Lens
balanceDataLockedL :: Lens_' BalanceData (Maybe Float)
balanceDataLockedL f BalanceData{..} = (\balanceDataLocked -> BalanceData { balanceDataLocked, ..} ) <$> f balanceDataLocked
{-# INLINE balanceDataLockedL #-}

-- | 'balanceDataUpdateOrigin' Lens
balanceDataUpdateOriginL :: Lens_' BalanceData (Maybe E'UpdateOrigin)
balanceDataUpdateOriginL f BalanceData{..} = (\balanceDataUpdateOrigin -> BalanceData { balanceDataUpdateOrigin, ..} ) <$> f balanceDataUpdateOrigin
{-# INLINE balanceDataUpdateOriginL #-}



-- * CreateOrderValidationError

-- | 'createOrderValidationErrorType' Lens
createOrderValidationErrorTypeL :: Lens_' CreateOrderValidationError (Maybe Text)
createOrderValidationErrorTypeL f CreateOrderValidationError{..} = (\createOrderValidationErrorType -> CreateOrderValidationError { createOrderValidationErrorType, ..} ) <$> f createOrderValidationErrorType
{-# INLINE createOrderValidationErrorTypeL #-}

-- | 'createOrderValidationErrorTitle' Lens
createOrderValidationErrorTitleL :: Lens_' CreateOrderValidationError (Maybe Text)
createOrderValidationErrorTitleL f CreateOrderValidationError{..} = (\createOrderValidationErrorTitle -> CreateOrderValidationError { createOrderValidationErrorTitle, ..} ) <$> f createOrderValidationErrorTitle
{-# INLINE createOrderValidationErrorTitleL #-}

-- | 'createOrderValidationErrorStatus' Lens
createOrderValidationErrorStatusL :: Lens_' CreateOrderValidationError (Maybe Double)
createOrderValidationErrorStatusL f CreateOrderValidationError{..} = (\createOrderValidationErrorStatus -> CreateOrderValidationError { createOrderValidationErrorStatus, ..} ) <$> f createOrderValidationErrorStatus
{-# INLINE createOrderValidationErrorStatusL #-}

-- | 'createOrderValidationErrorTraceId' Lens
createOrderValidationErrorTraceIdL :: Lens_' CreateOrderValidationError (Maybe Text)
createOrderValidationErrorTraceIdL f CreateOrderValidationError{..} = (\createOrderValidationErrorTraceId -> CreateOrderValidationError { createOrderValidationErrorTraceId, ..} ) <$> f createOrderValidationErrorTraceId
{-# INLINE createOrderValidationErrorTraceIdL #-}

-- | 'createOrderValidationErrorErrors' Lens
createOrderValidationErrorErrorsL :: Lens_' CreateOrderValidationError (Maybe Text)
createOrderValidationErrorErrorsL f CreateOrderValidationError{..} = (\createOrderValidationErrorErrors -> CreateOrderValidationError { createOrderValidationErrorErrors, ..} ) <$> f createOrderValidationErrorErrors
{-# INLINE createOrderValidationErrorErrorsL #-}



-- * ExecutionReport

-- | 'executionReportExchangeId' Lens
executionReportExchangeIdL :: Lens_' ExecutionReport (Text)
executionReportExchangeIdL f ExecutionReport{..} = (\executionReportExchangeId -> ExecutionReport { executionReportExchangeId, ..} ) <$> f executionReportExchangeId
{-# INLINE executionReportExchangeIdL #-}

-- | 'executionReportClientOrderId' Lens
executionReportClientOrderIdL :: Lens_' ExecutionReport (Text)
executionReportClientOrderIdL f ExecutionReport{..} = (\executionReportClientOrderId -> ExecutionReport { executionReportClientOrderId, ..} ) <$> f executionReportClientOrderId
{-# INLINE executionReportClientOrderIdL #-}

-- | 'executionReportSymbolExchange' Lens
executionReportSymbolExchangeL :: Lens_' ExecutionReport (Maybe Text)
executionReportSymbolExchangeL f ExecutionReport{..} = (\executionReportSymbolExchange -> ExecutionReport { executionReportSymbolExchange, ..} ) <$> f executionReportSymbolExchange
{-# INLINE executionReportSymbolExchangeL #-}

-- | 'executionReportSymbolCoinapi' Lens
executionReportSymbolCoinapiL :: Lens_' ExecutionReport (Maybe Text)
executionReportSymbolCoinapiL f ExecutionReport{..} = (\executionReportSymbolCoinapi -> ExecutionReport { executionReportSymbolCoinapi, ..} ) <$> f executionReportSymbolCoinapi
{-# INLINE executionReportSymbolCoinapiL #-}

-- | 'executionReportAmountOrder' Lens
executionReportAmountOrderL :: Lens_' ExecutionReport (Double)
executionReportAmountOrderL f ExecutionReport{..} = (\executionReportAmountOrder -> ExecutionReport { executionReportAmountOrder, ..} ) <$> f executionReportAmountOrder
{-# INLINE executionReportAmountOrderL #-}

-- | 'executionReportPrice' Lens
executionReportPriceL :: Lens_' ExecutionReport (Double)
executionReportPriceL f ExecutionReport{..} = (\executionReportPrice -> ExecutionReport { executionReportPrice, ..} ) <$> f executionReportPrice
{-# INLINE executionReportPriceL #-}

-- | 'executionReportSide' Lens
executionReportSideL :: Lens_' ExecutionReport (OrdSide)
executionReportSideL f ExecutionReport{..} = (\executionReportSide -> ExecutionReport { executionReportSide, ..} ) <$> f executionReportSide
{-# INLINE executionReportSideL #-}

-- | 'executionReportOrderType' Lens
executionReportOrderTypeL :: Lens_' ExecutionReport (OrdType)
executionReportOrderTypeL f ExecutionReport{..} = (\executionReportOrderType -> ExecutionReport { executionReportOrderType, ..} ) <$> f executionReportOrderType
{-# INLINE executionReportOrderTypeL #-}

-- | 'executionReportTimeInForce' Lens
executionReportTimeInForceL :: Lens_' ExecutionReport (TimeInForce)
executionReportTimeInForceL f ExecutionReport{..} = (\executionReportTimeInForce -> ExecutionReport { executionReportTimeInForce, ..} ) <$> f executionReportTimeInForce
{-# INLINE executionReportTimeInForceL #-}

-- | 'executionReportExpireTime' Lens
executionReportExpireTimeL :: Lens_' ExecutionReport (Maybe Date)
executionReportExpireTimeL f ExecutionReport{..} = (\executionReportExpireTime -> ExecutionReport { executionReportExpireTime, ..} ) <$> f executionReportExpireTime
{-# INLINE executionReportExpireTimeL #-}

-- | 'executionReportExecInst' Lens
executionReportExecInstL :: Lens_' ExecutionReport (Maybe [E'ExecInst])
executionReportExecInstL f ExecutionReport{..} = (\executionReportExecInst -> ExecutionReport { executionReportExecInst, ..} ) <$> f executionReportExecInst
{-# INLINE executionReportExecInstL #-}

-- | 'executionReportClientOrderIdFormatExchange' Lens
executionReportClientOrderIdFormatExchangeL :: Lens_' ExecutionReport (Text)
executionReportClientOrderIdFormatExchangeL f ExecutionReport{..} = (\executionReportClientOrderIdFormatExchange -> ExecutionReport { executionReportClientOrderIdFormatExchange, ..} ) <$> f executionReportClientOrderIdFormatExchange
{-# INLINE executionReportClientOrderIdFormatExchangeL #-}

-- | 'executionReportExchangeOrderId' Lens
executionReportExchangeOrderIdL :: Lens_' ExecutionReport (Maybe Text)
executionReportExchangeOrderIdL f ExecutionReport{..} = (\executionReportExchangeOrderId -> ExecutionReport { executionReportExchangeOrderId, ..} ) <$> f executionReportExchangeOrderId
{-# INLINE executionReportExchangeOrderIdL #-}

-- | 'executionReportAmountOpen' Lens
executionReportAmountOpenL :: Lens_' ExecutionReport (Double)
executionReportAmountOpenL f ExecutionReport{..} = (\executionReportAmountOpen -> ExecutionReport { executionReportAmountOpen, ..} ) <$> f executionReportAmountOpen
{-# INLINE executionReportAmountOpenL #-}

-- | 'executionReportAmountFilled' Lens
executionReportAmountFilledL :: Lens_' ExecutionReport (Double)
executionReportAmountFilledL f ExecutionReport{..} = (\executionReportAmountFilled -> ExecutionReport { executionReportAmountFilled, ..} ) <$> f executionReportAmountFilled
{-# INLINE executionReportAmountFilledL #-}

-- | 'executionReportStatus' Lens
executionReportStatusL :: Lens_' ExecutionReport (OrdStatus)
executionReportStatusL f ExecutionReport{..} = (\executionReportStatus -> ExecutionReport { executionReportStatus, ..} ) <$> f executionReportStatus
{-# INLINE executionReportStatusL #-}

-- | 'executionReportTimeOrder' Lens
executionReportTimeOrderL :: Lens_' ExecutionReport ([[Text]])
executionReportTimeOrderL f ExecutionReport{..} = (\executionReportTimeOrder -> ExecutionReport { executionReportTimeOrder, ..} ) <$> f executionReportTimeOrder
{-# INLINE executionReportTimeOrderL #-}

-- | 'executionReportErrorMessage' Lens
executionReportErrorMessageL :: Lens_' ExecutionReport (Maybe Text)
executionReportErrorMessageL f ExecutionReport{..} = (\executionReportErrorMessage -> ExecutionReport { executionReportErrorMessage, ..} ) <$> f executionReportErrorMessage
{-# INLINE executionReportErrorMessageL #-}



-- * ExecutionReportAllOf

-- | 'executionReportAllOfClientOrderIdFormatExchange' Lens
executionReportAllOfClientOrderIdFormatExchangeL :: Lens_' ExecutionReportAllOf (Text)
executionReportAllOfClientOrderIdFormatExchangeL f ExecutionReportAllOf{..} = (\executionReportAllOfClientOrderIdFormatExchange -> ExecutionReportAllOf { executionReportAllOfClientOrderIdFormatExchange, ..} ) <$> f executionReportAllOfClientOrderIdFormatExchange
{-# INLINE executionReportAllOfClientOrderIdFormatExchangeL #-}

-- | 'executionReportAllOfExchangeOrderId' Lens
executionReportAllOfExchangeOrderIdL :: Lens_' ExecutionReportAllOf (Maybe Text)
executionReportAllOfExchangeOrderIdL f ExecutionReportAllOf{..} = (\executionReportAllOfExchangeOrderId -> ExecutionReportAllOf { executionReportAllOfExchangeOrderId, ..} ) <$> f executionReportAllOfExchangeOrderId
{-# INLINE executionReportAllOfExchangeOrderIdL #-}

-- | 'executionReportAllOfAmountOpen' Lens
executionReportAllOfAmountOpenL :: Lens_' ExecutionReportAllOf (Double)
executionReportAllOfAmountOpenL f ExecutionReportAllOf{..} = (\executionReportAllOfAmountOpen -> ExecutionReportAllOf { executionReportAllOfAmountOpen, ..} ) <$> f executionReportAllOfAmountOpen
{-# INLINE executionReportAllOfAmountOpenL #-}

-- | 'executionReportAllOfAmountFilled' Lens
executionReportAllOfAmountFilledL :: Lens_' ExecutionReportAllOf (Double)
executionReportAllOfAmountFilledL f ExecutionReportAllOf{..} = (\executionReportAllOfAmountFilled -> ExecutionReportAllOf { executionReportAllOfAmountFilled, ..} ) <$> f executionReportAllOfAmountFilled
{-# INLINE executionReportAllOfAmountFilledL #-}

-- | 'executionReportAllOfStatus' Lens
executionReportAllOfStatusL :: Lens_' ExecutionReportAllOf (OrdStatus)
executionReportAllOfStatusL f ExecutionReportAllOf{..} = (\executionReportAllOfStatus -> ExecutionReportAllOf { executionReportAllOfStatus, ..} ) <$> f executionReportAllOfStatus
{-# INLINE executionReportAllOfStatusL #-}

-- | 'executionReportAllOfTimeOrder' Lens
executionReportAllOfTimeOrderL :: Lens_' ExecutionReportAllOf ([[Text]])
executionReportAllOfTimeOrderL f ExecutionReportAllOf{..} = (\executionReportAllOfTimeOrder -> ExecutionReportAllOf { executionReportAllOfTimeOrder, ..} ) <$> f executionReportAllOfTimeOrder
{-# INLINE executionReportAllOfTimeOrderL #-}

-- | 'executionReportAllOfErrorMessage' Lens
executionReportAllOfErrorMessageL :: Lens_' ExecutionReportAllOf (Maybe Text)
executionReportAllOfErrorMessageL f ExecutionReportAllOf{..} = (\executionReportAllOfErrorMessage -> ExecutionReportAllOf { executionReportAllOfErrorMessage, ..} ) <$> f executionReportAllOfErrorMessage
{-# INLINE executionReportAllOfErrorMessageL #-}



-- * Message

-- | 'messageType' Lens
messageTypeL :: Lens_' Message (Maybe Text)
messageTypeL f Message{..} = (\messageType -> Message { messageType, ..} ) <$> f messageType
{-# INLINE messageTypeL #-}

-- | 'messageSeverity' Lens
messageSeverityL :: Lens_' Message (Maybe Severity)
messageSeverityL f Message{..} = (\messageSeverity -> Message { messageSeverity, ..} ) <$> f messageSeverity
{-# INLINE messageSeverityL #-}

-- | 'messageExchangeId' Lens
messageExchangeIdL :: Lens_' Message (Maybe Text)
messageExchangeIdL f Message{..} = (\messageExchangeId -> Message { messageExchangeId, ..} ) <$> f messageExchangeId
{-# INLINE messageExchangeIdL #-}

-- | 'messageMessage' Lens
messageMessageL :: Lens_' Message (Maybe Text)
messageMessageL f Message{..} = (\messageMessage -> Message { messageMessage, ..} ) <$> f messageMessage
{-# INLINE messageMessageL #-}



-- * NewOrderSingle

-- | 'newOrderSingleExchangeId' Lens
newOrderSingleExchangeIdL :: Lens_' NewOrderSingle (Text)
newOrderSingleExchangeIdL f NewOrderSingle{..} = (\newOrderSingleExchangeId -> NewOrderSingle { newOrderSingleExchangeId, ..} ) <$> f newOrderSingleExchangeId
{-# INLINE newOrderSingleExchangeIdL #-}

-- | 'newOrderSingleClientOrderId' Lens
newOrderSingleClientOrderIdL :: Lens_' NewOrderSingle (Text)
newOrderSingleClientOrderIdL f NewOrderSingle{..} = (\newOrderSingleClientOrderId -> NewOrderSingle { newOrderSingleClientOrderId, ..} ) <$> f newOrderSingleClientOrderId
{-# INLINE newOrderSingleClientOrderIdL #-}

-- | 'newOrderSingleSymbolExchange' Lens
newOrderSingleSymbolExchangeL :: Lens_' NewOrderSingle (Maybe Text)
newOrderSingleSymbolExchangeL f NewOrderSingle{..} = (\newOrderSingleSymbolExchange -> NewOrderSingle { newOrderSingleSymbolExchange, ..} ) <$> f newOrderSingleSymbolExchange
{-# INLINE newOrderSingleSymbolExchangeL #-}

-- | 'newOrderSingleSymbolCoinapi' Lens
newOrderSingleSymbolCoinapiL :: Lens_' NewOrderSingle (Maybe Text)
newOrderSingleSymbolCoinapiL f NewOrderSingle{..} = (\newOrderSingleSymbolCoinapi -> NewOrderSingle { newOrderSingleSymbolCoinapi, ..} ) <$> f newOrderSingleSymbolCoinapi
{-# INLINE newOrderSingleSymbolCoinapiL #-}

-- | 'newOrderSingleAmountOrder' Lens
newOrderSingleAmountOrderL :: Lens_' NewOrderSingle (Double)
newOrderSingleAmountOrderL f NewOrderSingle{..} = (\newOrderSingleAmountOrder -> NewOrderSingle { newOrderSingleAmountOrder, ..} ) <$> f newOrderSingleAmountOrder
{-# INLINE newOrderSingleAmountOrderL #-}

-- | 'newOrderSinglePrice' Lens
newOrderSinglePriceL :: Lens_' NewOrderSingle (Double)
newOrderSinglePriceL f NewOrderSingle{..} = (\newOrderSinglePrice -> NewOrderSingle { newOrderSinglePrice, ..} ) <$> f newOrderSinglePrice
{-# INLINE newOrderSinglePriceL #-}

-- | 'newOrderSingleSide' Lens
newOrderSingleSideL :: Lens_' NewOrderSingle (OrdSide)
newOrderSingleSideL f NewOrderSingle{..} = (\newOrderSingleSide -> NewOrderSingle { newOrderSingleSide, ..} ) <$> f newOrderSingleSide
{-# INLINE newOrderSingleSideL #-}

-- | 'newOrderSingleOrderType' Lens
newOrderSingleOrderTypeL :: Lens_' NewOrderSingle (OrdType)
newOrderSingleOrderTypeL f NewOrderSingle{..} = (\newOrderSingleOrderType -> NewOrderSingle { newOrderSingleOrderType, ..} ) <$> f newOrderSingleOrderType
{-# INLINE newOrderSingleOrderTypeL #-}

-- | 'newOrderSingleTimeInForce' Lens
newOrderSingleTimeInForceL :: Lens_' NewOrderSingle (TimeInForce)
newOrderSingleTimeInForceL f NewOrderSingle{..} = (\newOrderSingleTimeInForce -> NewOrderSingle { newOrderSingleTimeInForce, ..} ) <$> f newOrderSingleTimeInForce
{-# INLINE newOrderSingleTimeInForceL #-}

-- | 'newOrderSingleExpireTime' Lens
newOrderSingleExpireTimeL :: Lens_' NewOrderSingle (Maybe Date)
newOrderSingleExpireTimeL f NewOrderSingle{..} = (\newOrderSingleExpireTime -> NewOrderSingle { newOrderSingleExpireTime, ..} ) <$> f newOrderSingleExpireTime
{-# INLINE newOrderSingleExpireTimeL #-}

-- | 'newOrderSingleExecInst' Lens
newOrderSingleExecInstL :: Lens_' NewOrderSingle (Maybe [E'ExecInst])
newOrderSingleExecInstL f NewOrderSingle{..} = (\newOrderSingleExecInst -> NewOrderSingle { newOrderSingleExecInst, ..} ) <$> f newOrderSingleExecInst
{-# INLINE newOrderSingleExecInstL #-}



-- * OrdSide



-- * OrdStatus



-- * OrdType



-- * OrderCancelAllRequest

-- | 'orderCancelAllRequestExchangeId' Lens
orderCancelAllRequestExchangeIdL :: Lens_' OrderCancelAllRequest (Text)
orderCancelAllRequestExchangeIdL f OrderCancelAllRequest{..} = (\orderCancelAllRequestExchangeId -> OrderCancelAllRequest { orderCancelAllRequestExchangeId, ..} ) <$> f orderCancelAllRequestExchangeId
{-# INLINE orderCancelAllRequestExchangeIdL #-}



-- * OrderCancelSingleRequest

-- | 'orderCancelSingleRequestExchangeId' Lens
orderCancelSingleRequestExchangeIdL :: Lens_' OrderCancelSingleRequest (Maybe Text)
orderCancelSingleRequestExchangeIdL f OrderCancelSingleRequest{..} = (\orderCancelSingleRequestExchangeId -> OrderCancelSingleRequest { orderCancelSingleRequestExchangeId, ..} ) <$> f orderCancelSingleRequestExchangeId
{-# INLINE orderCancelSingleRequestExchangeIdL #-}

-- | 'orderCancelSingleRequestExchangeOrderId' Lens
orderCancelSingleRequestExchangeOrderIdL :: Lens_' OrderCancelSingleRequest (Maybe Text)
orderCancelSingleRequestExchangeOrderIdL f OrderCancelSingleRequest{..} = (\orderCancelSingleRequestExchangeOrderId -> OrderCancelSingleRequest { orderCancelSingleRequestExchangeOrderId, ..} ) <$> f orderCancelSingleRequestExchangeOrderId
{-# INLINE orderCancelSingleRequestExchangeOrderIdL #-}

-- | 'orderCancelSingleRequestClientOrderId' Lens
orderCancelSingleRequestClientOrderIdL :: Lens_' OrderCancelSingleRequest (Maybe Text)
orderCancelSingleRequestClientOrderIdL f OrderCancelSingleRequest{..} = (\orderCancelSingleRequestClientOrderId -> OrderCancelSingleRequest { orderCancelSingleRequestClientOrderId, ..} ) <$> f orderCancelSingleRequestClientOrderId
{-# INLINE orderCancelSingleRequestClientOrderIdL #-}



-- * Position

-- | 'positionType' Lens
positionTypeL :: Lens_' Position (Maybe Text)
positionTypeL f Position{..} = (\positionType -> Position { positionType, ..} ) <$> f positionType
{-# INLINE positionTypeL #-}

-- | 'positionExchangeName' Lens
positionExchangeNameL :: Lens_' Position (Maybe Text)
positionExchangeNameL f Position{..} = (\positionExchangeName -> Position { positionExchangeName, ..} ) <$> f positionExchangeName
{-# INLINE positionExchangeNameL #-}

-- | 'positionData' Lens
positionDataL :: Lens_' Position (Maybe [PositionData])
positionDataL f Position{..} = (\positionData -> Position { positionData, ..} ) <$> f positionData
{-# INLINE positionDataL #-}



-- * PositionData

-- | 'positionDataId' Lens
positionDataIdL :: Lens_' PositionData (Maybe Text)
positionDataIdL f PositionData{..} = (\positionDataId -> PositionData { positionDataId, ..} ) <$> f positionDataId
{-# INLINE positionDataIdL #-}

-- | 'positionDataSymbolExchange' Lens
positionDataSymbolExchangeL :: Lens_' PositionData (Maybe Text)
positionDataSymbolExchangeL f PositionData{..} = (\positionDataSymbolExchange -> PositionData { positionDataSymbolExchange, ..} ) <$> f positionDataSymbolExchange
{-# INLINE positionDataSymbolExchangeL #-}

-- | 'positionDataSymbolCoinapi' Lens
positionDataSymbolCoinapiL :: Lens_' PositionData (Maybe Text)
positionDataSymbolCoinapiL f PositionData{..} = (\positionDataSymbolCoinapi -> PositionData { positionDataSymbolCoinapi, ..} ) <$> f positionDataSymbolCoinapi
{-# INLINE positionDataSymbolCoinapiL #-}

-- | 'positionDataAvgEntryPrice' Lens
positionDataAvgEntryPriceL :: Lens_' PositionData (Maybe Double)
positionDataAvgEntryPriceL f PositionData{..} = (\positionDataAvgEntryPrice -> PositionData { positionDataAvgEntryPrice, ..} ) <$> f positionDataAvgEntryPrice
{-# INLINE positionDataAvgEntryPriceL #-}

-- | 'positionDataQuantity' Lens
positionDataQuantityL :: Lens_' PositionData (Maybe Double)
positionDataQuantityL f PositionData{..} = (\positionDataQuantity -> PositionData { positionDataQuantity, ..} ) <$> f positionDataQuantity
{-# INLINE positionDataQuantityL #-}

-- | 'positionDataIsBuy' Lens
positionDataIsBuyL :: Lens_' PositionData (Maybe Bool)
positionDataIsBuyL f PositionData{..} = (\positionDataIsBuy -> PositionData { positionDataIsBuy, ..} ) <$> f positionDataIsBuy
{-# INLINE positionDataIsBuyL #-}

-- | 'positionDataUnrealisedPnL' Lens
positionDataUnrealisedPnLL :: Lens_' PositionData (Maybe Double)
positionDataUnrealisedPnLL f PositionData{..} = (\positionDataUnrealisedPnL -> PositionData { positionDataUnrealisedPnL, ..} ) <$> f positionDataUnrealisedPnL
{-# INLINE positionDataUnrealisedPnLL #-}

-- | 'positionDataLeverage' Lens
positionDataLeverageL :: Lens_' PositionData (Maybe Double)
positionDataLeverageL f PositionData{..} = (\positionDataLeverage -> PositionData { positionDataLeverage, ..} ) <$> f positionDataLeverage
{-# INLINE positionDataLeverageL #-}

-- | 'positionDataCrossMargin' Lens
positionDataCrossMarginL :: Lens_' PositionData (Maybe Bool)
positionDataCrossMarginL f PositionData{..} = (\positionDataCrossMargin -> PositionData { positionDataCrossMargin, ..} ) <$> f positionDataCrossMargin
{-# INLINE positionDataCrossMarginL #-}

-- | 'positionDataLiquidationPrice' Lens
positionDataLiquidationPriceL :: Lens_' PositionData (Maybe Double)
positionDataLiquidationPriceL f PositionData{..} = (\positionDataLiquidationPrice -> PositionData { positionDataLiquidationPrice, ..} ) <$> f positionDataLiquidationPrice
{-# INLINE positionDataLiquidationPriceL #-}

-- | 'positionDataRawData' Lens
positionDataRawDataL :: Lens_' PositionData (Maybe Text)
positionDataRawDataL f PositionData{..} = (\positionDataRawData -> PositionData { positionDataRawData, ..} ) <$> f positionDataRawData
{-# INLINE positionDataRawDataL #-}



-- * Severity



-- * TimeInForce


