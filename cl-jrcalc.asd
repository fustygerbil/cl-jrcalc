(defsystem "cl-jrcalc"
  :version "0.1.0"
  :author "forest@sdf.org"
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "cl-jrcalc/tests"))))

(defsystem "cl-jrcalc/tests"
  :author ""
  :license ""
  :depends-on ("cl-jrcalc"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-jrcalc"
  :perform (test-op (op c) (symbol-call :rove :run c)))
