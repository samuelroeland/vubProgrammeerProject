;;;;;;;;;;;;;;;;;;
;; ADT POSITION ;;
;;;;;;;;;;;;;;;;;;



(define (make-adt-position x y)


  ;; set-x! :: number -> /
  (define (x! new-x)
    (set! x new-x))


  ;; set-y! :: number -> /
  (define (y! new-y)
    (set! y new-y))


  ;; compare? :: position -> boolean
  (define (compare? other-position)
    (and (= x (other-position 'x))
         (= y (other-position 'y))))


  ;; get-x :: / -> number
  ;; get-y :: / -> number
  (define (dispatch-position msg)
    (cond ((eq? msg 'x!) x!)
          ((eq? msg 'y!) y!)
          ((eq? msg  'x) x)
          ((eq? msg 'y) y)
          (else
           (display "ERROR DISPATCH-POSITION"))))

  dispatch-position)

  