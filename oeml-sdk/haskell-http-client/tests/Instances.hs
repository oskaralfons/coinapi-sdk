{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import OEML-REST.Model
import OEML-REST.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (T.pack k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays
    
-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)
    
arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models
 
instance Arbitrary Balance where
  arbitrary = sized genBalance

genBalance :: Int -> Gen Balance
genBalance n =
  Balance
    <$> arbitraryReducedMaybe n -- balanceType :: Maybe Text
    <*> arbitraryReducedMaybe n -- balanceExchangeName :: Maybe Text
    <*> arbitraryReducedMaybe n -- balanceData :: Maybe [BalanceData]
  
instance Arbitrary BalanceData where
  arbitrary = sized genBalanceData

genBalanceData :: Int -> Gen BalanceData
genBalanceData n =
  BalanceData
    <$> arbitraryReducedMaybe n -- balanceDataId :: Maybe Text
    <*> arbitraryReducedMaybe n -- balanceDataSymbolExchange :: Maybe Text
    <*> arbitraryReducedMaybe n -- balanceDataSymbolCoinapi :: Maybe Text
    <*> arbitraryReducedMaybe n -- balanceDataBalance :: Maybe Float
    <*> arbitraryReducedMaybe n -- balanceDataAvailable :: Maybe Float
    <*> arbitraryReducedMaybe n -- balanceDataLocked :: Maybe Float
    <*> arbitraryReducedMaybe n -- balanceDataUpdateOrigin :: Maybe E'UpdateOrigin
  
instance Arbitrary CreateOrderValidationError where
  arbitrary = sized genCreateOrderValidationError

genCreateOrderValidationError :: Int -> Gen CreateOrderValidationError
genCreateOrderValidationError n =
  CreateOrderValidationError
    <$> arbitraryReducedMaybe n -- createOrderValidationErrorType :: Maybe Text
    <*> arbitraryReducedMaybe n -- createOrderValidationErrorTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- createOrderValidationErrorStatus :: Maybe Double
    <*> arbitraryReducedMaybe n -- createOrderValidationErrorTraceId :: Maybe Text
    <*> arbitraryReducedMaybe n -- createOrderValidationErrorErrors :: Maybe Text
  
instance Arbitrary ExecutionReport where
  arbitrary = sized genExecutionReport

genExecutionReport :: Int -> Gen ExecutionReport
genExecutionReport n =
  ExecutionReport
    <$> arbitraryReducedMaybe n -- executionReportExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- executionReportId :: Maybe Text
    <*> arbitraryReducedMaybe n -- executionReportClientOrderIdFormatExchange :: Maybe Text
    <*> arbitraryReducedMaybe n -- executionReportExchangeOrderId :: Maybe Text
    <*> arbitraryReducedMaybe n -- executionReportAmountOpen :: Maybe Double
    <*> arbitraryReducedMaybe n -- executionReportAmountFilled :: Maybe Double
    <*> arbitraryReducedMaybe n -- executionReportStatus :: Maybe OrdStatus
    <*> arbitraryReducedMaybe n -- executionReportTimeOrder :: Maybe [[Text]]
    <*> arbitraryReducedMaybe n -- executionReportErrorMessage :: Maybe Text
    <*> arbitraryReducedMaybe n -- executionReportClientOrderId :: Maybe Text
    <*> arbitraryReducedMaybe n -- executionReportSymbolExchange :: Maybe Text
    <*> arbitraryReducedMaybe n -- executionReportSymbolCoinapi :: Maybe Text
    <*> arbitraryReducedMaybe n -- executionReportAmountOrder :: Maybe Double
    <*> arbitraryReducedMaybe n -- executionReportPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- executionReportSide :: Maybe E'Side
    <*> arbitraryReducedMaybe n -- executionReportOrderType :: Maybe E'OrderType
    <*> arbitraryReducedMaybe n -- executionReportTimeInForce :: Maybe TimeInForce
    <*> arbitraryReducedMaybe n -- executionReportExpireTime :: Maybe Date
    <*> arbitraryReducedMaybe n -- executionReportExecInst :: Maybe [E'ExecInst]
  
instance Arbitrary Message where
  arbitrary = sized genMessage

genMessage :: Int -> Gen Message
genMessage n =
  Message
    <$> arbitraryReducedMaybe n -- messageType :: Maybe Text
    <*> arbitraryReducedMaybe n -- messageSeverity :: Maybe Severity
    <*> arbitraryReducedMaybe n -- messageExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- messageMessage :: Maybe Text
  
instance Arbitrary NewOrder where
  arbitrary = sized genNewOrder

genNewOrder :: Int -> Gen NewOrder
genNewOrder n =
  NewOrder
    <$> arbitrary -- newOrderExchangeId :: Text
    <*> arbitrary -- newOrderClientOrderId :: Text
    <*> arbitraryReducedMaybe n -- newOrderSymbolExchange :: Maybe Text
    <*> arbitraryReducedMaybe n -- newOrderSymbolCoinapi :: Maybe Text
    <*> arbitrary -- newOrderAmountOrder :: Double
    <*> arbitrary -- newOrderPrice :: Double
    <*> arbitraryReduced n -- newOrderSide :: OrdSide
    <*> arbitraryReduced n -- newOrderOrderType :: OrdType
    <*> arbitraryReduced n -- newOrderTimeInForce :: TimeInForce
    <*> arbitraryReducedMaybe n -- newOrderExpireTime :: Maybe Date
    <*> arbitraryReducedMaybe n -- newOrderExecInst :: Maybe [E'ExecInst]
  
instance Arbitrary OrderCancelAllRequest where
  arbitrary = sized genOrderCancelAllRequest

genOrderCancelAllRequest :: Int -> Gen OrderCancelAllRequest
genOrderCancelAllRequest n =
  OrderCancelAllRequest
    <$> arbitrary -- orderCancelAllRequestExchangeId :: Text
  
instance Arbitrary OrderCancelSingleRequest where
  arbitrary = sized genOrderCancelSingleRequest

genOrderCancelSingleRequest :: Int -> Gen OrderCancelSingleRequest
genOrderCancelSingleRequest n =
  OrderCancelSingleRequest
    <$> arbitraryReducedMaybe n -- orderCancelSingleRequestExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderCancelSingleRequestExchangeOrderId :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderCancelSingleRequestClientOrderId :: Maybe Text
  
instance Arbitrary Position where
  arbitrary = sized genPosition

genPosition :: Int -> Gen Position
genPosition n =
  Position
    <$> arbitraryReducedMaybe n -- positionType :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionExchangeName :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionData :: Maybe [PositionData]
  
instance Arbitrary PositionData where
  arbitrary = sized genPositionData

genPositionData :: Int -> Gen PositionData
genPositionData n =
  PositionData
    <$> arbitraryReducedMaybe n -- positionDataId :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionDataSymbolExchange :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionDataSymbolCoinapi :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionDataAvgEntryPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- positionDataQuantity :: Maybe Double
    <*> arbitraryReducedMaybe n -- positionDataIsBuy :: Maybe Bool
    <*> arbitraryReducedMaybe n -- positionDataUnrealisedPnL :: Maybe Double
    <*> arbitraryReducedMaybe n -- positionDataLeverage :: Maybe Double
    <*> arbitraryReducedMaybe n -- positionDataCrossMargin :: Maybe Bool
    <*> arbitraryReducedMaybe n -- positionDataLiquidationPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- positionDataRawData :: Maybe Text
  



instance Arbitrary E'ExecInst where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'OrderType where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Side where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'UpdateOrigin where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary OrdSide where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary OrdStatus where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary OrdType where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary Severity where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary TimeInForce where
  arbitrary = arbitraryBoundedEnum

