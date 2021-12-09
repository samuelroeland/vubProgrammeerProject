;;;;;;
;; Wall ADT ;;


(define (make-adt-wall position)
  (let ((walls (list (make-adt-wallpiece position))))

    ;; position! :: position -> /
    (define (position! new-pos)
      (set! position new-pos))

     (position 'position)

    ;; wall list
    (define (wall-list)
      (set! walls (cons (make-adt-wallpiece position) (make-adt-wallpiece (make-adt-position 20 20)))))


    

    
    ;; for every wall
    (define (for-every-wall f)
      (map f walls))



    (define (dispatch-wall msg)
      (cond ((eq? msg 'position!) position!)
            ((eq? msg 'position) position)
            ((eq? msg 'for-every-wall) for-every-wall)
            (else
             (display "error-wall-adt"))))


    dispatch-wall))