;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                          ADT LEVEL                             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(define (make-adt-level nr-cells-width nr-cells-height)
  (let* ((ant-position
          (make-adt-position (/ nr-cells-width 2)
                             (/ nr-cells-height 2)))
         (ant-adt (make-adt-ant ant-position))
         (wall-position (make-adt-position 10 15))
         (wall-adt (make-adt-wall wall-position)))


;---------------------------------------------------------------


    ;;;;;;;;;;;;;;;
    ;; Logic Ant ;;
    ;;;;;;;;;;;;;;;

    (define (turn-ant! msg)
      (cond ((eq? msg 'right)
             ((ant-adt 'direction!) 'right)
             ;;(display "right")
             ((ant-adt 'move!)))
                                                            
                                  

             
            ((eq? msg 'left)
             ((ant-adt 'direction!) 'left)
             
             ((ant-adt 'move!)))
             
            
            ((eq? msg 'up)
             ((ant-adt 'direction!) 'up)
             
             ((ant-adt 'move!)))
            ; ((ant-adt 'position!) ((ant-position 'move) 'up)))
            
            
            ((eq? msg 'down)
             ((ant-adt 'direction!) 'down)
             
             ((ant-adt 'move!)))
             
            
            (else
             (display "unknown direction input - level adt - move-ant!"))))

 


    (define (move-ant!)
      (display ""))
    







    
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
            ((eq? msg 'wall) wall-adt)
            ((eq? msg 'key!) key!) 
            (else
             (display "DISPATCH-LEVEL ELSE BRANCH"))))


    dispatch-level))