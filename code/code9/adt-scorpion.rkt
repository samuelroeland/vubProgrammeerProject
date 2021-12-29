;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                        ADT SCORPION                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; make-adt-ant :: position -> scorpion
(define (make-adt-scorpion position)
  (let ((direction 'null))




    ;; position! :: position -> /
    (define (position! new-pos)
      (set! position new-pos))


    ;; direction! :: direction -> /
    (define (direction! new-direction)
      (set! direction new-direction))




    ;; move! :: / -> /
    (define (move!)
      (position! ((position 'move) direction)))



    (define (dispatch-scorp msg)
      (cond ((eq? msg 'position) position)
            ((eq? msg 'position!) position!)
            ((eq? msg 'direction!) direction!)
            ((eq? msg 'move!) move!)
            (else
             (display "error-dispatch scorpion"))))

    dispatch-scorp))