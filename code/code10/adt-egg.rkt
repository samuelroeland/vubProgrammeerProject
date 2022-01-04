;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                      ADT EGG                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(define (make-adt-egg position)



  (define (position! new-pos)
    (set! position new-pos))








  (define (dispatch-food msg)
    (cond ((eq? msg 'position) position)
          ((eq? msg 'position!) position!)
          (else
           (display "error-dispatch egg"))))


  dispatch-food)
                