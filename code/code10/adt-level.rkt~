;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                          ADT LEVEL                             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(define (make-adt-level nr-cells-width nr-cells-height)
  (let* ((ant-position
          (make-adt-position ant-start-position-x ant-start-position-y))
                             
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
             ((ant-adt 'move!)))
                                                            
                                  

            ((eq? msg 'left)
             ((ant-adt 'direction!) 'left)
             
             ((ant-adt 'move!)))
             
            
            ((eq? msg 'up)
             ((ant-adt 'direction!) 'up)
             
             ((ant-adt 'move!)))
            
            
            
            ((eq? msg 'down)
             ((ant-adt 'direction!) 'down)
             
             ((ant-adt 'move!)))
             
            
            (else
             (display "unknown direction input - level adt - move-ant!"))))


    
      
    (define (move-ant!)
      (display ""))

    #;(define (move-ant!)
      (let* ((ant-position (ant-adt 'position)) ;; vraag positie ant
             (collision ((wall-adt 'for-every-wall)
                         (lambda (wall-piece)
                           ((ant-position 'compare?) (wall-piece 'position))))))

        (if (member #t collision)
            (begin
              (display "COLLISION DETECTED")
              
              ))))
            


    ;; collision-detection :: key -> allowed move 
    (define (collision-detection key)
      (let* ((ant-position (((ant-adt 'position) 'move) key))
             (collision ((wall-adt 'for-every-wall)
                         (lambda (wall-piece)
                           ((ant-position 'compare?)
                            (wall-piece 'position))))))
        (if (member #t collision)
            #t
            #f)))
            
           


    
      
        
        
        
        

             
           ;;  (collision ((wall-adt 'for-every-wall) ;; loop over list walls
             ;;            (lambda (wallpiece-adt) ;; voor elke muur doe:
               ;;            ((ant-position 'compare?) ;; vergelijk ant pos met wall pos
                 ;;           (wallpiece-adt 'position))))))
     ;;   (if (member #t collision)
       ;;     (display "WALL !!!")
         ;;   (display "NO WALL !!"))))
            
                            
    







    
   ; (define (draw! draw-adt)
    ;  ((ant-adt 'draw!) draw-adt) )




    

;---------------------------------------------------------------

    ;;;;;;;;;;;;;;;;;;;
    ;; General Logic ;;
    ;;;;;;;;;;;;;;;;;;;
    

    (define (update! delta-time)
     (move-ant!))


    ;; check wall on position ant + key
    
    (define (key! key)
      (if (collision-detection key)
          (display "collision detected")
          (turn-ant! key)))


   


    (define (dispatch-level msg)
      (cond ((eq? msg 'update!) update!)
            ((eq? msg 'ant) ant-adt) ;; 'ant doest not refer to let anymore but the possibility the ant on a different position
            ((eq? msg 'wall) wall-adt)
            ((eq? msg 'key!) key!) 
            (else
             (display "DISPATCH-LEVEL ELSE BRANCH"))))


    dispatch-level))