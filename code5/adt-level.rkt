;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                          ADT LEVEL                             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(define (make-adt-level nr-cells-width nr-cells-height)
  (let* ((ant-start-position
          (make-adt-position (/ nr-cells-width 2)
                             (/ nr-cells-height 2)))
         (ant-adt (make-adt-ant ant-start-position)))





    (define (move-ant!)
      (display "adt-level move-ant"))

  

    (define (update! delta-time)
      ;; hier moet een functie komen te staan ipv display, functie wordt meegegeven aan set-game-loop-function fun
      (display))



    

    (define (draw! draw-adt)
      ((ant-adt 'draw!) draw-adt) )
      

    


   


    (define (dispatch-level msg)
      (cond ((eq? msg 'update!) update!)
            ((eq? msg 'ant) ant-adt)
            (else
             (display "DISPATCH-LEVEL ELSE BRANCH"))))


    dispatch-level))