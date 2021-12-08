;;;;;;
;; Wall ADT ;;


(define (make-adt-wall position)
  (let ((walls (list (make-adt-wallpiece position))))

  ;; position! :: position -> /
  (define (position! new-pos)
    (set! position new-pos))


    




  (define (dispatch-wall msg)
    (cond ((eq? msg 'position!) position!)
          ((eq? msg 'position) position)
          (else
           (display "error-wall-adt"))))


  dispatch-wall))