;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                          ADT LEVEL                             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(define (make-adt-level nr-cells-width nr-cells-height)
  (let* ((ant-position
          (make-adt-position (/ nr-cells-width 2)
                             (/ nr-cells-height 2)))
         (ant-adt (make-adt-ant ant-position)))


;---------------------------------------------------------------


    ;;;;;;;;;;;;;;;
    ;; Logic Ant ;;
    ;;;;;;;;;;;;;;;

    (define (turn-ant! msg)
      (cond ((eq? msg 'right)

             ((ant-adt 'direction!) 'right))





             
            ((eq? msg 'left)
             ((ant-adt 'direction!) 'left))
            ((eq? msg 'up)
             ((ant-adt 'direction!) 'up))
            ((eq? msg 'down)
             ((ant-adt 'direction!) 'down))
            (else
             (display "unknown direction input - level adt - move-ant!"))))

 


    (define (move-ant!)
      (display 'move-ant))
    







    
   ; (define (draw! draw-adt)
    ;  ((ant-adt 'draw!) draw-adt) )




    

;---------------------------------------------------------------

    ;;;;;;;;;;;;;;;;;;;
    ;; General Logic ;;
    ;;;;;;;;;;;;;;;;;;;
    

    (define (update! delta-time)
     (move-ant!))


    (define (key! key)
      (turn-ant! key))


   


    (define (dispatch-level msg)
      (cond ((eq? msg 'update!) update!)
            ((eq? msg 'ant) ant-adt) ;; 'ant doest not refer to let anymore but the possibility the ant on a different position
            ((eq? msg 'key!) key!) 
            (else
             (display "DISPATCH-LEVEL ELSE BRANCH"))))


    dispatch-level))