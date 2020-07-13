(ns oeml-rest-api.specs.cancel-order-single-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cancel-order-single-request-data
  {
   (ds/req :exchange_id) string?
   (ds/opt :exchange_order_id) string?
   (ds/opt :client_order_id) string?
   })

(def cancel-order-single-request-spec
  (ds/spec
    {:name ::cancel-order-single-request
     :spec cancel-order-single-request-data}))
