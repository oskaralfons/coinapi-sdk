{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import OEML-REST.Model
import OEML-REST.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy Balance)
      propMimeEq MimeJSON (Proxy :: Proxy BalanceData)
      propMimeEq MimeJSON (Proxy :: Proxy CreateOrderValidationError)
      propMimeEq MimeJSON (Proxy :: Proxy ExecutionReport)
      propMimeEq MimeJSON (Proxy :: Proxy Message)
      propMimeEq MimeJSON (Proxy :: Proxy NewOrder)
      propMimeEq MimeJSON (Proxy :: Proxy OrdStatus)
      propMimeEq MimeJSON (Proxy :: Proxy Order)
      propMimeEq MimeJSON (Proxy :: Proxy OrderCancelAllRequest)
      propMimeEq MimeJSON (Proxy :: Proxy OrderCancelSingleRequest)
      propMimeEq MimeJSON (Proxy :: Proxy OrderData)
      propMimeEq MimeJSON (Proxy :: Proxy Position)
      propMimeEq MimeJSON (Proxy :: Proxy PositionData)
      propMimeEq MimeJSON (Proxy :: Proxy Severity)
      propMimeEq MimeJSON (Proxy :: Proxy TimeInForce)
      
