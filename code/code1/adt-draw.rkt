

(define (make-adt-draw pixels-horizontal pixels-vertical)
  (let ((window (make-window window-width-px window-height-px "Fire Ant")))

    ((window 'set-background!) "blue")


    (define (set-game-loop-function! fun)
      ((window 'set-update-callback!) fun))

    (define (dispatch-draw-adt msg)
      (cond ((eq? msg 'set-Xgame-loop-function!) set-game-loop-function!)
            (else
             (display "MAKE-ADT-DRAW ELSE BRANCH"))))

    dispatch-draw-adt))