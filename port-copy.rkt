#!/usr/bin/racket

#lang racket

(define now (current-inexact-milliseconds))

(define fin (open-input-file "blocks"))
(define fout (open-output-file "blocks_racket_pipes"))

(copy-port fin fout)

(display (round (- (current-inexact-milliseconds) now)))
