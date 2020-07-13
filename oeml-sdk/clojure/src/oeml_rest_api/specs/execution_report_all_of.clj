(ns oeml-rest-api.specs.execution-report-all-of
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [oeml-rest-api.specs.ord-status :refer :all]
            )
  (:import (java.io File)))


(def execution-report-all-of-data
  {
   (ds/opt :client_order_id_format_exchange) string?
   (ds/opt :exchange_order_id) string?
   (ds/opt :amount_open) float?
   (ds/opt :amount_filled) float?
   (ds/opt :status) ord-status-spec
   (ds/opt :time_order) (s/coll-of (s/coll-of string?))
   (ds/opt :error_message) string?
   })

(def execution-report-all-of-spec
  (ds/spec
    {:name ::execution-report-all-of
     :spec execution-report-all-of-data}))
