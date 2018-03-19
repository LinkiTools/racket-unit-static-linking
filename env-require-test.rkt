#lang racket/base

(require "env-require.rkt")

(require/from-env "NAME")

(display name)
