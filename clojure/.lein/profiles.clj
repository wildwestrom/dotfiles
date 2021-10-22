{:user           {:dependencies [[borkdude/jet "0.0.6"]]
                  :aliases      {"jet" ["run" "-m" "jet.main"]}
                  :plugins      [[cider/cider-nrepl "0.27.2"]
                                 [lein-ancient "0.7.0"]
                                 [refactor-nrepl "2.5.1"]]}
 :dev            {:plugins [[cider/cider-nrepl "0.27.2"]
                            [refactor-nrepl "2.5.1"]]}
 :shadow-cljs    {:nrepl-middleware [refactor-nrepl.middleware/wrap-refactor]}
 :android-common {:android {:sdk-path "/Users/main/Library/Android/sdk"}}
 :android-user   {:dependencies [[cider/cider-nrepl "0.27.2"]]
                  :android      {:aot-exclude-ns ["cider.nrepl.middleware.util.java.parser"
                                                  "cider.nrepl" "cider-nrepl.plugin"]}}}
