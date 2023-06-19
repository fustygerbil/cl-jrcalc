(defpackage cl-jrcalc/tests/main
  (:use :cl
        :cl-jrcalc
        :rove))
(in-package :cl-jrcalc/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-jrcalc)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
