#lang racket

(require "framework-sig.rkt" "user-sig.rkt")
(provide user@)

(define-unit user@

  (import framework^)
  (export user^)

  (printf "User initialized")

  (define user-name%
    (class name%
      (super-new)
      (define/override (get-name)
        (printf "name: paulo")))))
