;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                           ADT ANT                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; make-adt-ant :: position -> ant
(define (make-adt-ant position)
  



  

  ;; position! :: position -> /
  (define (position! new-position)
    (set! position new-position))



  (define (dispatch-ant msg)
    (cond ((eq? msg 'position) position)
          ((eq? msg 'position!) position!)
          (else
           (display "error-dispatch ant"))))

  dispatch-ant)


  


  