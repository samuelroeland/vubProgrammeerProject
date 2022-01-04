;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                        ADT POSITION                            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



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


  ;; move :: symbol -> position
  (define (move direction)
    (cond ((eq? direction 'up) (make-adt-position x (- y 1)))      
          ((eq? direction 'down) (make-adt-position x (+ y 1)))
          ((eq? direction 'left) (make-adt-position (- x 1) y))
          ((eq? direction 'right) (make-adt-position (+ x 1) y))
          ((eq? direction 'null) (display "collision detected"))
          (else
           (display "adt-position - move function else branch -"))))


;-------------------------------------------------------------------


  


;-------------------------------------------------------------------     

  ;; get-x :: / -> number
  ;; get-y :: / -> number
  (define (dispatch-position msg)
    (cond ((eq? msg 'x!) x!)
          ((eq? msg 'y!) y!)
          ((eq? msg  'x) x)
          ((eq? msg 'y) y)
          ((eq? msg 'compare?) compare?)
          ((eq? msg 'move) move)
          (else
           (display "ERROR DISPATCH-POSITION"))))

  dispatch-position)

  