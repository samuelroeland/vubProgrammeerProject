;;;;;;
;; Wall ADT ;;


(define (make-adt-wall position)
  (let ((walls (list (make-adt-wallpiece position))))

    ;; position! :: position -> /
    (define (position! new-pos)
      (set! position new-pos))

    

    ;; wall list
    (define (wall-list)
      (set! walls (list (make-adt-wallpiece (make-adt-position 0 0))(make-adt-wallpiece (make-adt-position 1 0)))))


    (wall-list)

    
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