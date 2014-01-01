{:user {:plugins [[lein-cljsbuild "1.0.0"]
                  [lein-clojars "0.9.1"]
                  [lein-midje    "3.1.3"]
                  [lein-midje-doc "0.0.18"]
                  [lein-localrepo "0.5.2"]
                  [lein-simpleton "1.0.1"]
                  [lein-pprint "1.1.1"]
                  [lein-marginalia "0.7.1"]
                  [codox "0.6.6"]]
         :dependencies [[spyscope "0.1.4"]
                        [org.clojure/tools.namespace "0.2.4"]
                        [slamhound "1.3.1"]
                        [criterium "0.4.1"]
                        [io.aviso/pretty "0.1.8"]
                        [im.chit/vinyasa "0.1.0"]]
         :injections [(require '(clojure.tools.namespace repl find))
                      (try (require 'spyscope.core)
                        (catch RuntimeException e))
                      (require 'vinyasa.inject)
                      (vinyasa.inject/inject 'clojure.core
                        '[[vinyasa.inject [inject inject]]
                          [vinyasa.pull [pull pull]]
                          [vinyasa.lein [lein lein]]
                          [clojure.repl apropos dir doc find-doc source 
                                        [root-cause cause]]
                          [clojure.tools.namespace.repl [refresh refresh]]
                          [clojure.pprint [pprint >pprint]]
                          [io.aviso.binary [write-binary >bin]]])
                      (require 'io.aviso.repl 
                               'clojure.repl 
                               'clojure.main)
                      (alter-var-root #'clojure.main/repl-caught
                        ;(constantly @#'io.aviso.repl/pretty-pst)
                        (constantly @#'clojure.stacktrace/print-stack-trace))
                      (alter-var-root #'clojure.repl/pst
                        ;(constantly @#'io.aviso.repl/pretty-pst))
                        (constantly @#'clojure.stacktrace/print-stack-trace))
                      (refer-clojure)]}}