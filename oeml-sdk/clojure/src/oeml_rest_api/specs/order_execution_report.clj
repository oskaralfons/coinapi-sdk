(ns oeml-rest-api.specs.order-execution-report
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [oeml-rest-api.specs.ord-side :refer :all]
            [oeml-rest-api.specs.ord-type :refer :all]
            [oeml-rest-api.specs.time-in-force :refer :all]
            [oeml-rest-api.specs.ord-status :refer :all]
            )
  (:import (java.io File)))


(def order-execution-report-data
  {
   (ds/req :exchange_id) string?
   (ds/req :client_order_id) string?
   (ds/opt :symbol_id_exchange) string?
   (ds/opt :symbol_id_coinapi) string?
   (ds/req :amount_order) float?
   (ds/req :price) float?
   (ds/req :side) ord-side-spec
   (ds/req :order_type) ord-type-spec
   (ds/req :time_in_force) time-in-force-spec
   (ds/opt :expire_time) inst?
   (ds/opt :exec_inst) (s/coll-of string?)
   (ds/req :client_order_id_format_exchange) string?
   (ds/opt :exchange_order_id) string?
   (ds/req :amount_open) float?
   (ds/req :amount_filled) float?
   (ds/req :status) ord-status-spec
   (ds/req :time_order) (s/coll-of (s/coll-of string?))
   (ds/opt :error_message) string?
   })

(def order-execution-report-spec
  (ds/spec
    {:name ::order-execution-report
     :spec order-execution-report-data}))
