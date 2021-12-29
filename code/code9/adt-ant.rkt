;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                           ADT ANT                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; make-adt-ant :: position -> ant
(define (make-adt-ant position)
  (let ((direction 'null))
       
        
        
  



  

    ;; position! :: position -> /
    (define (position! new-position)
      (set! position new-position))



    (define (direction! new-direction)
      (set! direction new-direction))


    
    
    


    (define (move!)
      (position! ((position 'move) direction)))
      

    
    



    (define (dispatch-ant msg)
      (cond ((eq? msg 'position) position)
            ((eq? msg 'position!) position!)
            ((eq? msg 'direction!) direction!)
            ((eq? msg 'move!) move!)
            (else
             (display "error-dispatch ant"))))

  dispatch-ant))


  


  