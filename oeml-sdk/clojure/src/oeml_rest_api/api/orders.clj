(ns oeml-rest-api.api.orders
  (:require [oeml-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [oeml-rest-api.specs.severity :refer :all]
            [oeml-rest-api.specs.time-in-force :refer :all]
            [oeml-rest-api.specs.balance-data :refer :all]
            [oeml-rest-api.specs.position-data :refer :all]
            [oeml-rest-api.specs.message :refer :all]
            [oeml-rest-api.specs.orders-data :refer :all]
            [oeml-rest-api.specs.order-cancel-single-request :refer :all]
            [oeml-rest-api.specs.create-order-validation-error :refer :all]
            [oeml-rest-api.specs.ord-status :refer :all]
            [oeml-rest-api.specs.balance :refer :all]
            [oeml-rest-api.specs.ord-type :refer :all]
            [oeml-rest-api.specs.orders :refer :all]
            [oeml-rest-api.specs.order-cancel-all-request :refer :all]
            [oeml-rest-api.specs.position :refer :all]
            [oeml-rest-api.specs.execution-report :refer :all]
            [oeml-rest-api.specs.new-order :refer :all]
            [oeml-rest-api.specs.ord-side :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-orders-cancel-all-post-with-http-info any?
  "Cancel all orders
  This request cancels all open orders across all or single specified exchange."
  [order-cancel-all-request order-cancel-all-request]
  (check-required-params order-cancel-all-request)
  (call-api "/v1/orders/cancel/all" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    order-cancel-all-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec v1-orders-cancel-all-post message-spec
  "Cancel all orders
  This request cancels all open orders across all or single specified exchange."
  [order-cancel-all-request order-cancel-all-request]
  (let [res (:data (v1-orders-cancel-all-post-with-http-info order-cancel-all-request))]
    (if (:decode-models *api-context*)
       (st/decode message-spec res st/string-transformer)
       res)))


(defn-spec v1-orders-cancel-post-with-http-info any?
  "Cancel order
  This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID."
  [order-cancel-single-request order-cancel-single-request]
  (check-required-params order-cancel-single-request)
  (call-api "/v1/orders/cancel" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    order-cancel-single-request
             :content-types ["application/json"]
             :accepts       ["application/json" "appliction/json"]
             :auth-names    []}))

(defn-spec v1-orders-cancel-post execution-report-spec
  "Cancel order
  This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID."
  [order-cancel-single-request order-cancel-single-request]
  (let [res (:data (v1-orders-cancel-post-with-http-info order-cancel-single-request))]
    (if (:decode-models *api-context*)
       (st/decode execution-report-spec res st/string-transformer)
       res)))


(defn-spec v1-orders-get-with-http-info any?
  "Get all orders
  Get all current open orders across all or single specified exchange."
  ([] (v1-orders-get-with-http-info nil))
  ([{:keys [exchange_id]} (s/map-of keyword? any?)]
   (call-api "/v1/orders" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"exchange_id" exchange_id }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec v1-orders-get orders-spec
  "Get all orders
  Get all current open orders across all or single specified exchange."
  ([] (v1-orders-get nil))
  ([optional-params any?]
   (let [res (:data (v1-orders-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode orders-spec res st/string-transformer)
        res))))


(defn-spec v1-orders-post-with-http-info any?
  "Create new order
  This request creating new order for the specific exchange."
  [new-order new-order]
  (check-required-params new-order)
  (call-api "/v1/orders" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    new-order
             :content-types ["application/json"]
             :accepts       ["application/json" "appliction/json"]
             :auth-names    []}))

(defn-spec v1-orders-post execution-report-spec
  "Create new order
  This request creating new order for the specific exchange."
  [new-order new-order]
  (let [res (:data (v1-orders-post-with-http-info new-order))]
    (if (:decode-models *api-context*)
       (st/decode execution-report-spec res st/string-transformer)
       res)))


(defn-spec v1-orders-status-client-order-id-get-with-http-info any?
  "Get order status
  Get the current order status for the specified order. The requested order can no longer be active."
  [client_order_id string?]
  (check-required-params client_order_id)
  (call-api "/v1/orders/status/{client_order_id}" :get
            {:path-params   {"client_order_id" client_order_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec v1-orders-status-client-order-id-get execution-report-spec
  "Get order status
  Get the current order status for the specified order. The requested order can no longer be active."
  [client_order_id string?]
  (let [res (:data (v1-orders-status-client-order-id-get-with-http-info client_order_id))]
    (if (:decode-models *api-context*)
       (st/decode execution-report-spec res st/string-transformer)
       res)))


