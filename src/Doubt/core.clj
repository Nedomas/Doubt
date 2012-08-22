(ns Doubt.core)
;(use 'clojure.java.jdbc)
(require '[clojure.java.jdbc :as sql])
(println (System/getenv "DATABASE_URL"))
(sql/with-connection (System/getenv "DATABASE_URL")
              (sql/create-table :testing [:data :text]))
(defn -main
  "I don't do a whole lot."
  [& args]
  (println "Hello, World!")
  ;(println (System/getenv "DATABASE_URL"))
  )
