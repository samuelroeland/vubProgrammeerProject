


(define (make-adt-game)
  (let ((draw-adt (make-adt-draw cel-width-px cel-height-px))
        (level-adt (make-adt-level game-width game-height)))

    ;;(define (game-loop-procedure delta-time)
      ;;((draw-adt 'draw-game) dispatch-game))


    (define (game-loop-procedure delta-time)
      ((level-adt 'update) delta-time))

    (define (start)
      draw-adt)


    (define (dispatch-game msg)
      (cond ((eq? msg 'start) start)
            (else
             (error "unknown message -DISPATCH GAME-"))))

    dispatch-game))

