{-
   OEML - REST API

   This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 

   OpenAPI Version: 3.0.0
   OEML - REST API API version: v1
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : OEML-REST.API.Balances
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module OEML-REST.API.Balances where

import OEML-REST.Core
import OEML-REST.MimeTypes
import OEML-REST.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** Balances

-- *** v1BalancesGet

-- | @GET \/v1\/balances@
-- 
-- Get balances
-- 
-- Returns all of your balances, including available balance.
-- 
v1BalancesGet 
  :: Accept accept -- ^ request accept ('MimeType')
  -> OEML-RESTRequest V1BalancesGet MimeNoContent [Balance] accept
v1BalancesGet  _ =
  _mkRequest "GET" ["/v1/balances"]

data V1BalancesGet  

-- | /Optional Param/ "exchange_id" - Exchange name
instance HasOptionalParam V1BalancesGet ExchangeId where
  applyOptionalParam req (ExchangeId xs) =
    req `setQuery` toQuery ("exchange_id", Just xs)
-- | @application/json@
instance Produces V1BalancesGet MimeJSON
-- | @appliction/json@
instance Produces V1BalancesGet MimeApplictionJson

