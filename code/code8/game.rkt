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
(load "mazelevels.rkt")

;;
;; Start Game ;;
;;;;;;;;;;;;;;;;



(define game (make-adt-game))
((game 'start))




;;;;;;;;;;;;;;;;;;;
;; FOUTMELDINGEN ;;
;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;
;; VRAGEN ;;
;;;;;;;;;;;;

;; Genereren maze:
;     - algoritme dat maze maakt ????
;     - handmatig maze uittekenen (code duplicatie vermijden)
;     - hoe implementeren externe .rkt file met hierin al de maze levels


;;;;;;;;;;
;; TODO ;;
;;;;;;;;;;





; Maze algorithm (adt wall)

; change bitmap when ant changes direction 

; Scorpion with fixed path

; Spawn food on tiles which are available








