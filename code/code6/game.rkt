(#%require (only racket random))

(#%require "Graphics.rkt")


(load "constants.rkt")
(load "adt-game.rkt")
(load "adt-draw.rkt")
(load "adt-level.rkt")
(load "adt-position.rkt")
(load "adt-ant.rkt")
(load "adt-wall.rkt")
(load "adt-wallpiece.rkt")

;;
;; Start Game ;;
;;;;;;;;;;;;;;;;



(define game (make-adt-game))
((game 'start))




;;;;;;;;;;;;;;;;;;;
;; FOUTMELDINGEN ;;
;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;
;; TODO ;;
;;;;;;;;;;

; Move ant on playfield
; Implement the update! function in level adt

; Make walls on playfield

; Ant can not walk through walls

; Scorpion with fixed path

; Spawn food on tiles which are available







