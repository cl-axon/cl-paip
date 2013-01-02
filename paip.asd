(ql:quickload 'asdf)

(defpackage #:paip-system
  (:use #:cl #:asdf))

(in-package #:paip-system)

(defsystem paip
  :serial t
  :description "Paradigms of AI Programming Source Code"
  :author "Peter Norvig"
  :license "PAIP License"
  :version "0.1"
  :components (
    (:module "common"
     :components (
       (:file "package")
       (:file "auxfns")))
    (:module "ch01"
     :components (
       (:file "package")
       (:file "intro")))
    (:module "ch02"
     :components (
       (:file "package")
       (:file "simple")))
    (:module "ch03"
     :components (
       (:file "package")
       (:file "overview")))
    (:module "ch04"
     :components (
       (:file "package")
       (:file "gps1")
       (:file "gps")))
    (:module "ch05"
     :components (
       (:file "package")
       (:file "eliza1")
       (:file "eliza")))
    (:module "ch06"
     :components (
       (:file "package")
       (:file "patmatch")
       (:file "eliza-pm")
       (:file "search")
       (:file "gps-srch")))
    (:module "examples"
     :components (
       (:file "package")
       (:file "tutor")
       (:file "examples")))))
