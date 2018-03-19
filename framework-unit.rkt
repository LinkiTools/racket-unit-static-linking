#lang racket

(require "framework-sig.rkt")
(provide framework@)

(define-unit framework@

  (import)
  (export framework^)

  (printf "Framework initialized")

  (define name%
    (class object%
      (super-new)
      (abstract get-name))))
