#lang racket/base

(provide require/from-env)

(require (for-syntax racket/base syntax/parse))

(define-syntax (require/from-env stx)
  (syntax-parse stx
    [(_ v:str)
     (with-syntax ([mod-name (datum->syntax stx (getenv (syntax->datum #'v)) #'v)])
       #'(require mod-name))]))
