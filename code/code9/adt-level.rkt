;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                          ADT LEVEL                             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(define (make-adt-level nr-cells-width nr-cells-height)
  (let* ((ant-position
          (make-adt-position ant-start-position-x ant-start-position-y))
         (ant-adt (make-adt-ant ant-position))

         (scorpion-position
          (make-adt-position scorp1-start-position-x scorp1-start-position-y))
         (scorpion-adt (make-adt-scorpion scorpion-position))
         (scorpion-time 0)
         
         (wall-position (make-adt-position 10 15))
         (wall-adt (make-adt-wall wall-position)))
         


;---------------------------------------------------------------


    ;;;;;;;;;;;;;;;
    ;; Logic Ant ;;
    ;;;;;;;;;;;;;;;

    (define (turn-obj! msg obj)
          
      (cond ((eq? msg 'right)
             ((obj 'direction!) 'right)
             ((obj 'move!)))
            
            ((eq? msg 'left)
             ((obj 'direction!) 'left)
             ((obj 'move!)))
             
            ((eq? msg 'up)
             ((obj 'direction!) 'up)
             ((obj 'move!)))
            
            ((eq? msg 'down)
             ((obj 'direction!) 'down) 
             ((obj 'move!)))

            ((eq? msg 'null)
             ((obj 'direction!) 'null))
             

            (else
             (display "unknown direction input - level adt - move-ant!"))))


    
      
    (define (move-ant!)
      (display ""))


            


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
            
           


;---------------------------------------------------------------
    ;;;;;;;;;;;;;;;;;;;;
    ;; Logic Scorpion ;;
    ;;;;;;;;;;;;;;;;;;;;

    


    
      
    (define scorpion1-path
      (list 'left 'left 'left 'null 'left 'left 'left 'left 'left 'left 'left 'left 'down 'down 'down 'right 'right 'right 'right 'right 'right 'right 'right 'right 'right 'down 'down 'right 'right 'right 'right 'up 'up 'up 'up 'up 'left 'left 'left))
    
    
        
        
    (define (last-cell lst)
      (cond ((null? (cdr lst)) lst)
            (else
             (last-cell (cdr lst)))))

    (define (make-cycle lst)
      (set-cdr! (last-cell lst) lst))


    (make-cycle scorpion1-path)

    (define (move-scorpion! path)
      (if (> scorpion-time scorpion-speed)
          (begin
            (if (null? path)
                (begin
                  (display "end of path scorpion")
                  ((ant-adt 'direction!) 'null))
                (begin
                  (turn-obj! (car path) scorpion-adt)
                  (set! scorpion1-path (cdr scorpion1-path))
                  (display "moving scorpion")))
            (set! scorpion-time 0))))
    
    

;---------------------------------------------------------------

    ;;;;;;;;;;;;;;;;;;;
    ;; General Logic ;;
    ;;;;;;;;;;;;;;;;;;;
    

    (define (update! delta-time)
      (move-ant!)
      (set! scorpion-time (+ scorpion-time delta-time))
      (move-scorpion! scorpion1-path))
      
      


    ;; check wall on position ant + key
    
    (define (key! key)
      (if (collision-detection key)
          (display "collision detected")
          (turn-obj! key ant-adt)))


   


    (define (dispatch-level msg)
      (cond ((eq? msg 'update!) update!)
            ((eq? msg 'ant) ant-adt) ;; 'ant doest not refer to let anymore but the possibility the ant on a different position
            ((eq? msg 'wall) wall-adt)
            ((eq? msg 'scorpion) scorpion-adt)
            ((eq? msg 'key!) key!) 
            (else
             (display "DISPATCH-LEVEL ELSE BRANCH"))))


    dispatch-level))