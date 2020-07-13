(ns oeml-rest-api.specs.cancel-order-all-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cancel-order-all-request-data
  {
   (ds/req :exchange_id) string?
   })

(def cancel-order-all-request-spec
  (ds/spec
    {:name ::cancel-order-all-request
     :spec cancel-order-all-request-data}))
