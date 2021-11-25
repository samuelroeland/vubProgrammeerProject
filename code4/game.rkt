(#%require (only racket random))

(#%require "Graphics.rkt")


(load "constants.rkt")
(load "adt-game.rkt")
(load "adt-draw.rkt")
(load "adt-level.rkt")
(load "adt-position.rkt")
(load "adt-ant.rkt")

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

; Make walls on playfield

; Ant can not walk through walls

; Scorpion with fixed path

; Spawn food on tiles which are available







