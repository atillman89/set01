;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname snacks) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(require 2htdp/image)
(require rackunit)
(require rackunit/text-ui)
(require "extras.rkt")
(provide
 initial-machine
 machine-next-state
 machine-chocolates
 machine-carrots
 machine-bank)

(define-struct Machine (carrots chocolate bank))
(define-struct CustomerInput (input))

;; A Machine is a (make-machine Number Number Number)
;; Interpretation:
;;   carrots is the number of packages of carrot sticks in the machine
;;   chocolate is the number of choclate bars in the machine
;;   bank is the amount of money in the machine (in USD)

;; machine-fn : Machine -> ??
;(define (machine-fn m)
;  (...
;   (machine-carrots m)
;   (machine-chocolate m)
;   (machine-bank m)))

;; A CustomerInput is one of
;; -- a positive Number interp: insert the specified number of cents
;; -- "chocolate"       interp: request a chocolate bar
;; -- "carrots"         interp: request a package of carrot sticks
;; -- "release"         interp: return all the coins that the customer has put in

;; input-fn : CustomerInput -> ??
;(define (input-fn input)
;(cond
;    [(int=? input) ...]
;    [(string=? tls "chocolate") ...]
;    [(string=? tls "carrots") ...]
;    [(string=? tls "release") ...]))

;; initial-machine : Number Number -> Machine
;GIVEN: the number of number of packages of carrot sticks and chocolate
;bars
;RETURNS: a machine loaded with the given number of chocolate bars and
;carrot sticks, with an empty bank.

(define (initial-machine carrots chocolates)
  (make-Machine carrots chocolates 0))

;; Input=? : Machine String -> Boolean
;GIVEN: a machine and a string (intended to be one of four customer inputs)
;RETURNS: a boolean that determines if the given string matches the machine's
;current input

(define (Input=? CustomerInput CheckInput)
  (cond
    [(= CustomerInput CheckInput) true]
    [else false]))

;; machine-next-state : Machine CustomerInput -> Machine
;GIVEN: a machine state and a customer input
;RETURNS: the state of the machine that should follow the customer's
;input

(define (machine-next-state MachineState Input)
  (cond
    [(Input=? MachineState "chocolate") Machine(carrots (- chocolate 1) (bank 1.75))]
    [(Input=? MachineState "carrots") Machine((- carrots 1) chocolate (bank 0.7))]
    [(Input=? MachineState "release") Machine(carrots chocolate bank)]
    [else Machine()]))

;; machine-chocolates : Machine -> Number
;; GIVEN: a machine state
;; RETURNS: the number of chocolate bars left in the machine

XX

;; machine-carrots : Machine -> Number
;; GIVEN: a machine state
;; RETURNS: the number of packages of carrot sticks left in the machine

XX

;; machine-bank : Machine -> Number
;; GIVEN: a machine state
;; RETURNS: the amount of money in the machine's bank, in cents

XX