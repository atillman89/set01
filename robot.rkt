;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname robot) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(require rackunit)
(require rackunit/text-ui)
(require "extras.rkt")
(provide
 initial-robot
 robot-left
 robot-right
 robot-forward
 robot-north?
 robot-south?
 robot-east?
 robot-west?)

(define-struct robot (radius xposn yposn direction))
(define emptyscene (empty-scene width height))

;; A Robot is a (make-robot Number Number Number String)
;; Interpretation:
;;   radius is the radius measurement of the given robot in inches
;;   xposn is the x-coordinate of the robot
;;   yposn is the y-coordinate of the robot
;;   direction is the direction the robot is facing (as a String)
;;   A direction is one of
;;   -- "north"  interp: the robot is facing north
;;   -- "south"  interp: the robot is facing south
;;   -- "east"   interp: the robot is facing east
;;   -- "west"   interp: the robot is facing west

;; robot-fn : Robot -> ??
;(define (robot-fn r)
;  (...
;   (robot-radius r)
;   (robot-xposn r)
;   (robot-yposn r)
;   (robot-direction r)))
(define RobotRadius 15)
(define RobotInitDirection "north")

;; emptyscene is the empty scene on which we place our robot
;; width is the width of the scene
;; height is the height of the scene
(define width 200)
(define height 400)

;; initial-robot : PosInt PosInt -> Robot
;GIVEN: a set of (x,y) coordinates
;RETURNS: a robot with its center at those coordinates, facing north
;(up).

(define (inital-robot x y)
  (make-robot RobotRadius x y RobotInitDirection))

;; robot-direction=? : Robot String -> Boolean
;GIVEN: a robot and a direction robot is facing as a string ("north",
;"south", "east" or "west")
;RETURNS: a boolean determining if the given string matches the
;direction the given robot is facing
(define (robot-direction=? robot CheckDirection)
  (cond
    [(= robot-direction robot CheckDirection) true]
    [else false]))

;; robot-left : Robot -> Robot
;; robot-right : Robot -> Robot
;GIVEN: a robot
;RETURNS: a robot like the original, but turned 90 degrees either left
;or right.

(define (robot-left robot)
  (cond
    [(robot-direction=? robot-direction "north") robot(radius xposn yposn "west")]
    [robot-direction=? "east" robot(radius xposn yposn "north")]
    [robot-direction=? "south" robot(radius xposn yposn "east")]
    [robot-direction=? "west" robot(radius xposn yposn "south")]))

(define (robot-right robot)
  (cond
    [robot-direction=? "north" robot(radius xposn yposn "east")]
    [robot-direction=? "east" robot(radius xposn yposn "south")]
    [robot-direction=? "south" robot(radius xposn yposn "west")]
    [robot-direction=? "west" robot(radius xposn yposn "north")]))

;; robot-forward : Robot PosInt -> Robot
;GIVEN: a robot and a distance
;RETURNS: a robot like the given one, but moved forward by the
;specified number of pixels.  If moving forward the specified number
;of pixels would cause the robot to run into a wall, the robot should
;stop at the wall.

XX

;; robot-north? : Robot -> Boolean
;; robot-south? : Robot -> Boolean
;; robot-east? : Robot -> Boolean
;; robot-west? : Robot -> Boolean
;GIVEN: a robot
;ANSWERS: whether the robot is facing in the specified direction.

XX