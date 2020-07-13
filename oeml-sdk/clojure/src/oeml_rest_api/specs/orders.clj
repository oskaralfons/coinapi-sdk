(ns oeml-rest-api.specs.orders
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [oeml-rest-api.specs.orders-data :refer :all]
            )
  (:import (java.io File)))


(def orders-data
  {
   (ds/opt :type) string?
   (ds/opt :exchange_id) string?
   (ds/opt :data) (s/coll-of orders-data-spec)
   })

(def orders-spec
  (ds/spec
    {:name ::orders
     :spec orders-data}))
