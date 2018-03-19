#lang racket

(provide main)

(require "env-require.rkt"
         "framework-unit.rkt"
         "user-sig.rkt")

(require/from-env "MOD")

(define-compound-unit/infer final-unit@
  (import)
  (export user^)

  (link framework@ user@))

(define-values/invoke-unit/infer final-unit@)

(define (main)
  (define c (new user-name%))
  (send c get-name))

(main)
