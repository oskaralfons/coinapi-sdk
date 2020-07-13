(ns oeml-rest-api.api.orders
  (:require [oeml-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [oeml-rest-api.specs.severity :refer :all]
            [oeml-rest-api.specs.time-in-force :refer :all]
            [oeml-rest-api.specs.balance-data :refer :all]
            [oeml-rest-api.specs.validation-error :refer :all]
            [oeml-rest-api.specs.position-data :refer :all]
            [oeml-rest-api.specs.cancel-order-single-request :refer :all]
            [oeml-rest-api.specs.message :refer :all]
            [oeml-rest-api.specs.new-order-single :refer :all]
            [oeml-rest-api.specs.ord-status :refer :all]
            [oeml-rest-api.specs.order-execution-report-all-of :refer :all]
            [oeml-rest-api.specs.balance :refer :all]
            [oeml-rest-api.specs.ord-type :refer :all]
            [oeml-rest-api.specs.order-execution-report :refer :all]
            [oeml-rest-api.specs.position :refer :all]
            [oeml-rest-api.specs.cancel-order-all-request :refer :all]
            [oeml-rest-api.specs.ord-side :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-orders-cancel-all-post-with-http-info any?
  "Cancel all orders
  This request cancels all open orders across all or single specified exchange."
  [cancel-order-all-request cancel-order-all-request]
  (check-required-params cancel-order-all-request)
  (call-api "/v1/orders/cancel/all" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    cancel-order-all-request
             :content-types ["application/json"]
             :accepts       ["application/json" "appliction/json"]
             :auth-names    []}))

(defn-spec v1-orders-cancel-all-post message-spec
  "Cancel all orders
  This request cancels all open orders across all or single specified exchange."
  [cancel-order-all-request cancel-order-all-request]
  (let [res (:data (v1-orders-cancel-all-post-with-http-info cancel-order-all-request))]
    (if (:decode-models *api-context*)
       (st/decode message-spec res st/string-transformer)
       res)))


(defn-spec v1-orders-cancel-post-with-http-info any?
  "Cancel order
  This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID."
  [cancel-order-single-request cancel-order-single-request]
  (check-required-params cancel-order-single-request)
  (call-api "/v1/orders/cancel" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    cancel-order-single-request
             :content-types ["application/json"]
             :accepts       ["application/json" "appliction/json"]
             :auth-names    []}))

(defn-spec v1-orders-cancel-post order-execution-report-spec
  "Cancel order
  This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID."
  [cancel-order-single-request cancel-order-single-request]
  (let [res (:data (v1-orders-cancel-post-with-http-info cancel-order-single-request))]
    (if (:decode-models *api-context*)
       (st/decode order-execution-report-spec res st/string-transformer)
       res)))


(defn-spec v1-orders-get-with-http-info any?
  "Get all orders
  Get last execution reports for all open orders across all or single exchange."
  ([] (v1-orders-get-with-http-info nil))
  ([{:keys [exchange_id]} (s/map-of keyword? any?)]
   (call-api "/v1/orders" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"exchange_id" exchange_id }
              :form-params   {}
              :content-types []
              :accepts       ["application/json" "appliction/json"]
              :auth-names    []})))

(defn-spec v1-orders-get (s/coll-of order-execution-report-spec)
  "Get all orders
  Get last execution reports for all open orders across all or single exchange."
  ([] (v1-orders-get nil))
  ([optional-params any?]
   (let [res (:data (v1-orders-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of order-execution-report-spec) res st/string-transformer)
        res))))


(defn-spec v1-orders-post-with-http-info any?
  "Create new order
  This request creating new order for the specific exchange."
  [new-order-single new-order-single]
  (check-required-params new-order-single)
  (call-api "/v1/orders" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    new-order-single
             :content-types ["application/json"]
             :accepts       ["application/json" "appliction/json"]
             :auth-names    []}))

(defn-spec v1-orders-post order-execution-report-spec
  "Create new order
  This request creating new order for the specific exchange."
  [new-order-single new-order-single]
  (let [res (:data (v1-orders-post-with-http-info new-order-single))]
    (if (:decode-models *api-context*)
       (st/decode order-execution-report-spec res st/string-transformer)
       res)))


(defn-spec v1-orders-status-client-order-id-get-with-http-info any?
  "Get order status
  Get the last order execution report for the specified order. The requested order does not need to be active/opened."
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

(defn-spec v1-orders-status-client-order-id-get order-execution-report-spec
  "Get order status
  Get the last order execution report for the specified order. The requested order does not need to be active/opened."
  [client_order_id string?]
  (let [res (:data (v1-orders-status-client-order-id-get-with-http-info client_order_id))]
    (if (:decode-models *api-context*)
       (st/decode order-execution-report-spec res st/string-transformer)
       res)))


