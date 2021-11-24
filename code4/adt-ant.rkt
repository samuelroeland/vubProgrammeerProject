;;;;;;;;;;;;;
;; ADT ANT ;;
;;;;;;;;;;;;;


;; make-adt-ant :: position -> ant
(define (make-adt-ant position)



  
  
  ;; draw!
  (define (draw! draw-adt)
    ((draw-adt 'draw-ant!) 'ok)) ;; 'ok representeerd de parameter die draw-ant! in adt-draw moet meekrijgen (ant-adt)


  ;; position! :: position -> /
  (define (position! new-position)
    (set! position new-position))



  (define (dispatch-ant msg)
    (cond ((eq? msg 'draw!) draw!)
          (else
           (display "error-dispatch ant"))))

  dispatch-ant)


  


  