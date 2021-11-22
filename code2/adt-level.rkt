

(define (make-adt-level nr-cells-width nr-cells-height)



  (define (update! delta-time)
    ;; hier moet een functie komen te staan ipv display, functie wordt meegegeven aan set-game-loop-function fun
    ((game 'start)))
    


  (define (dispatch-level msg)
    (cond ((eq? msg 'update!) update!)
          (else
           (display "DISPATCH-LEVEL ELSE BRANCH"))))


  dispatch-level)