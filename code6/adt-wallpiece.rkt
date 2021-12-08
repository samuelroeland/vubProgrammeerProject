;;;;;;
;; Wall Piece ADT



(define (make-adt-wallpiece position)
  ;; position! :: position -> /
  (define (position! new-pos)
    (set! position new-pos))



  (define (dispatch-wallpiece msg)
    (cond ((eq? msg 'position!) position!)
          ((eq? msg 'position) position)
          (else
           (display "error-wall-adt"))))


  dispatch-wallpiece)