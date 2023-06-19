(defpackage cl-jrcalc
  (:use :cl))
(in-package :cl-jrcalc)

;; packages
(ql:quickload "cl-json") ;; (among other things) decode json
;;(ql:quickload "drakma") ;; HTTP client
(ql:quickload 'trivial-download) ;; download files

;; where are we getting the JSON from?
(defvar *json-url* "https://aace.s3.amazonaws.com/"
  "Base URL serving the JSON")
(defvar *glupdates-loc* "GLUpdates.json"
  "Name of index JSON file")
(defvar *json-cache* "json/"
  "Local json cache dir")

;; download a file to a directory
(defun download-file (url file dir)
  (let (
	(remote-file (format nil "~a~a" url file))
	(local-file (format nil "~a~a" dir file)))
    (trivial-download:download remote-file local-file))
  )

;; download index
(let ((url (format nil "~a~a" *json-url* *glupdates-loc*)))
  (trivial-download:download url dir)
  )
;; download index



;; for each item in the index file
;;  download if base item number (e.g. GL040) doesn't exist on file
;;  if version of the item on file differs
;;   download updated version and replace if successful download

;; blah blah blah.

;; unsorted:
(defvar *json* (with-open-file (stream "/home/user/lisp/icpg/GLUpdates.json") (json:decode-json stream)))

(mapcar (lambda (element) (assoc :+GLID+ element)) *json*)
					; cl-json
					; decode-json &optional stream

;; if major and minor modes don't match (i.e. GLUpdate downloaded but updated file not yet downloaded) then wildcard match and visibly warn user

;; (with-open-file (stream file))
