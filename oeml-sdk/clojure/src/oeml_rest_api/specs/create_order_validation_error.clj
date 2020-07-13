(ns oeml-rest-api.specs.create-order-validation-error
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def create-order-validation-error-data
  {
   (ds/opt :type) string?
   (ds/opt :title) string?
   (ds/opt :status) float?
   (ds/opt :traceId) string?
   (ds/opt :errors) string?
   })

(def create-order-validation-error-spec
  (ds/spec
    {:name ::create-order-validation-error
     :spec create-order-validation-error-data}))
