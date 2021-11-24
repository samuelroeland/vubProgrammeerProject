

(define (make-adt-level nr-cells-width nr-cells-height)





  (define (move-ant!)
    (display "adt-level move-ant"))

  

  (define (update! delta-time)
    ;; hier moet een functie komen te staan ipv display, functie wordt meegegeven aan set-game-loop-function fun
    (move-ant!))
    


  (define (dispatch-level msg)
    (cond ((eq? msg 'update!) update!)
          (else
           (display "DISPATCH-LEVEL ELSE BRANCH"))))


  dispatch-level)