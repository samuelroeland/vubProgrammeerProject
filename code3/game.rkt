(#%require (only racket random))

(#%require "Graphics.rkt")


(load "constants.rkt")
(load "adt-game.rkt")
(load "adt-draw.rkt")
(load "adt-level.rkt")
(load "adt-position.rkt")

;;
;; Start Game ;;
;;;;;;;;;;;;;;;;



(define game (make-adt-game))
((game 'start))




;;;;;;;;;;;;;;;;;;;
;; FOUTMELDINGEN ;;
;;;;;;;;;;;;;;;;;;;

; set-game-loop-function werkt NOG niet


