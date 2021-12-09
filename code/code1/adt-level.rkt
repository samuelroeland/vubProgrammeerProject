

(define (make-adt-level nr-cells-width nr-cells-height)



  (define (update! delta-time)
    ;; hier moet een functie komen te staan ipv display
    (+ 1 2))
    ;(display "UPDATE! FUNCTION: PARAM DELTA-TIME"))


  (define (dispatch-level msg)
    (cond ((eq? msg 'update!) update!)
          (else
           (display "DISPATCH-LEVEL ELSE BRANCH"))))


  dispatch-level)