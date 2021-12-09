;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                             ADT GAME                           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




(define (make-adt-game)
  (let ((draw-adt (make-adt-draw cel-width-px cel-height-px))
        (level-adt (make-adt-level game-width game-height)))

 
    

    (define (game-loop-procedure delta-time)
      ;;((level-adt 'update!) delta-time)
      ((draw-adt 'draw-game!) dispatch-game))




    
    

    ;; game-loop-procedure zal...
    (define (start)
      ((draw-adt 'set-game-loop-function!) game-loop-procedure))
      








    
    (define (dispatch-game msg)
      (cond ((eq? msg 'start) start)
            ((eq? msg 'level) level-adt)
            (else
             (error "unknown message -DISPATCH GAME-"))))

    dispatch-game))

