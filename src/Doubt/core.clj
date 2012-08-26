(ns Doubt.core)
;(use 'clojure.java.jdbc)
(require '[clojure.java.jdbc :as sql])
(require '[netz.core :as netz])
(def db {:classname "org.postgresql.Driver"
         :subprotocol "postgresql"
         :subname "postgres://localhost:5432/template1" :user "mindaugas" :password "aoeu"})
;(sql/with-connection db
;              (sql/create-table :testing [:data :text]))
(defn -main
  "I don't do a whole lot."
  [& args]
  (println "Hello, World!")
  ;(println (System/getenv "DATABASE_URL"))
  )
