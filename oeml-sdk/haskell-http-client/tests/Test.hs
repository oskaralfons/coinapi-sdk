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
      propMimeEq MimeJSON (Proxy :: Proxy CancelOrderAllRequest)
      propMimeEq MimeJSON (Proxy :: Proxy CancelOrderSingleRequest)
      propMimeEq MimeJSON (Proxy :: Proxy ExecutionReport)
      propMimeEq MimeJSON (Proxy :: Proxy ExecutionReportAllOf)
      propMimeEq MimeJSON (Proxy :: Proxy Message)
      propMimeEq MimeJSON (Proxy :: Proxy NewOrderSingle)
      propMimeEq MimeJSON (Proxy :: Proxy OrdSide)
      propMimeEq MimeJSON (Proxy :: Proxy OrdStatus)
      propMimeEq MimeJSON (Proxy :: Proxy OrdType)
      propMimeEq MimeJSON (Proxy :: Proxy Position)
      propMimeEq MimeJSON (Proxy :: Proxy PositionData)
      propMimeEq MimeJSON (Proxy :: Proxy Severity)
      propMimeEq MimeJSON (Proxy :: Proxy TimeInForce)
      propMimeEq MimeJSON (Proxy :: Proxy ValidationError)
      
