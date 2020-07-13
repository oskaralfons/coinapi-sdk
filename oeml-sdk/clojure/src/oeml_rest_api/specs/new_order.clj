(ns oeml-rest-api.specs.new-order
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [oeml-rest-api.specs.ord-side :refer :all]
            [oeml-rest-api.specs.ord-type :refer :all]
            [oeml-rest-api.specs.time-in-force :refer :all]
            )
  (:import (java.io File)))


(def new-order-data
  {
   (ds/req :exchange_id) string?
   (ds/req :client_order_id) string?
   (ds/opt :symbol_exchange) string?
   (ds/opt :symbol_coinapi) string?
   (ds/req :amount_order) float?
   (ds/req :price) float?
   (ds/req :side) ord-side-spec
   (ds/req :order_type) ord-type-spec
   (ds/req :time_in_force) time-in-force-spec
   (ds/opt :expire_time) inst?
   (ds/opt :exec_inst) (s/coll-of string?)
   })

(def new-order-spec
  (ds/spec
    {:name ::new-order
     :spec new-order-data}))
