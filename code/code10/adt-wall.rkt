;;;;;;
;; Wall ADT ;;


(define (make-adt-wall position)
  (let ((walls (list (make-adt-wallpiece position)))
        (mazelevels (make-adt-maze)))

    ;; position! :: position -> /
    (define (position! new-pos)
      (set! position new-pos))



;;---------------------------------------------------------------------------

    ;; ALGORITHM TO AUTOMATIZE MAZE CONSTRUCTION
    #;(define (build-maze)
      (define (top-row x)
        ()))
    



;;---------------------------------------------------------------------------
    ;(set! walls '((maze-levels) 'level1-maze))


;;---------------------------------------------------------------------------

    ;;  !!!
    ;;
    ;; wall list
    ;;
    ;; remove magic constants !!!
    

    ;; level 1 maze
    (define (make-maze)
      (set! walls (list
                   ;; TOP ROW Y=0
                   (make-adt-wallpiece (make-adt-position 19 0))
                   (make-adt-wallpiece (make-adt-position 18 0))
                   (make-adt-wallpiece (make-adt-position 17 0))
                   (make-adt-wallpiece (make-adt-position 16 0))
                   (make-adt-wallpiece (make-adt-position 15 0))
                   (make-adt-wallpiece (make-adt-position 14 0))
                   (make-adt-wallpiece (make-adt-position 13 0))
                   (make-adt-wallpiece (make-adt-position 12 0))
                   (make-adt-wallpiece (make-adt-position 11 0))
                   (make-adt-wallpiece (make-adt-position 10 0))
                   (make-adt-wallpiece (make-adt-position 9 0))
                   (make-adt-wallpiece (make-adt-position 8 0))
                   (make-adt-wallpiece (make-adt-position 7 0))
                   (make-adt-wallpiece (make-adt-position 6 0))
                   (make-adt-wallpiece (make-adt-position 5 0))
                   ;(make-adt-wallpiece (make-adt-position 4 0)) ;; start pos ant
                   (make-adt-wallpiece (make-adt-position 3 0))
                   (make-adt-wallpiece (make-adt-position 2 0))
                   (make-adt-wallpiece (make-adt-position 1 0))
                   (make-adt-wallpiece (make-adt-position 0 0))

                   ;; ROW Y=2
                   (make-adt-wallpiece (make-adt-position 19 2))
                   (make-adt-wallpiece (make-adt-position 18 2))
                   (make-adt-wallpiece (make-adt-position 17 2))
                   (make-adt-wallpiece (make-adt-position 16 2))
                   ;(make-adt-wallpiece (make-adt-position 15 2))
                   (make-adt-wallpiece (make-adt-position 14 2))
                   (make-adt-wallpiece (make-adt-position 13 2))
                   (make-adt-wallpiece (make-adt-position 12 2))
                   (make-adt-wallpiece (make-adt-position 11 2))
                   (make-adt-wallpiece (make-adt-position 10 2))
                   (make-adt-wallpiece (make-adt-position 9 2))
                   (make-adt-wallpiece (make-adt-position 8 2))
                   (make-adt-wallpiece (make-adt-position 7 2))
                   (make-adt-wallpiece (make-adt-position 6 2))
                   (make-adt-wallpiece (make-adt-position 5 2))
                   (make-adt-wallpiece (make-adt-position 4 2)) 
                   (make-adt-wallpiece (make-adt-position 3 2))
                   (make-adt-wallpiece (make-adt-position 2 2))
                   (make-adt-wallpiece (make-adt-position 1 2))

                    ;; ROW Y=3
                   (make-adt-wallpiece (make-adt-position 19 3))
                   ;(make-adt-wallpiece (make-adt-position 18 3))
                   (make-adt-wallpiece (make-adt-position 17 3))
                   (make-adt-wallpiece (make-adt-position 16 3))
                   ;(make-adt-wallpiece (make-adt-position 15 3))
                   (make-adt-wallpiece (make-adt-position 14 3))
                   (make-adt-wallpiece (make-adt-position 13 3))
                   (make-adt-wallpiece (make-adt-position 12 3))
                  ; (make-adt-wallpiece (make-adt-position 11 3))
                   (make-adt-wallpiece (make-adt-position 10 3))
                   (make-adt-wallpiece (make-adt-position 9 3))
                   (make-adt-wallpiece (make-adt-position 8 3))
                   (make-adt-wallpiece (make-adt-position 7 3))
                   ;(make-adt-wallpiece (make-adt-position 6 3))
                   (make-adt-wallpiece (make-adt-position 5 3))
                   (make-adt-wallpiece (make-adt-position 4 3)) 
                   (make-adt-wallpiece (make-adt-position 3 3))
                   (make-adt-wallpiece (make-adt-position 2 3))
                   (make-adt-wallpiece (make-adt-position 1 3))

                     ;; ROW Y=4
                   ;(make-adt-wallpiece (make-adt-position 19 4))
                   ;(make-adt-wallpiece (make-adt-position 18 4))
                   ;(make-adt-wallpiece (make-adt-position 17 4))
                   (make-adt-wallpiece (make-adt-position 16 4))
                   ;(make-adt-wallpiece (make-adt-position 15 4))
                   ;(make-adt-wallpiece (make-adt-position 14 4))
                   ;(make-adt-wallpiece (make-adt-position 13 4))
                   ;(make-adt-wallpiece (make-adt-position 12 4))
                   ;(make-adt-wallpiece (make-adt-position 11 4))
                   ;(make-adt-wallpiece (make-adt-position 10 4))
                   ;(make-adt-wallpiece (make-adt-position 9 4))
                   ;(make-adt-wallpiece (make-adt-position 8 4))
                   ;(make-adt-wallpiece (make-adt-position 7 4))
                   ;(make-adt-wallpiece (make-adt-position 6 4))
                   ;(make-adt-wallpiece (make-adt-position 5 4))
                   ;(make-adt-wallpiece (make-adt-position 4 4)) 
                   ;(make-adt-wallpiece (make-adt-position 3 4))
                   ;(make-adt-wallpiece (make-adt-position 2 4))
                  ;(make-adt-wallpiece (make-adt-position 1 4))

                     ;; ROW Y=5
                   ;(make-adt-wallpiece (make-adt-position 19 5))
                   ;(make-adt-wallpiece (make-adt-position 18 5))
                   ;(make-adt-wallpiece (make-adt-position 17 5))
                   ;(make-adt-wallpiece (make-adt-position 16 5))
                   ;(make-adt-wallpiece (make-adt-position 15 5))
                   (make-adt-wallpiece (make-adt-position 14 5))
                   (make-adt-wallpiece (make-adt-position 13 5))
                   (make-adt-wallpiece (make-adt-position 12 5))
                   (make-adt-wallpiece (make-adt-position 11 5))
                   (make-adt-wallpiece (make-adt-position 10 5))
                   (make-adt-wallpiece (make-adt-position 9 5))
                   (make-adt-wallpiece (make-adt-position 8 5))
                   (make-adt-wallpiece (make-adt-position 7 5))
                   (make-adt-wallpiece (make-adt-position 6 5))
                   (make-adt-wallpiece (make-adt-position 5 5))
                   (make-adt-wallpiece (make-adt-position 4 5)) 
                   (make-adt-wallpiece (make-adt-position 3 5))
                   (make-adt-wallpiece (make-adt-position 2 5))
                   (make-adt-wallpiece (make-adt-position 1 5))

                     ;; ROW Y=6
                   (make-adt-wallpiece (make-adt-position 19 6))
                   (make-adt-wallpiece (make-adt-position 18 6))
                   (make-adt-wallpiece (make-adt-position 17 6))
                   (make-adt-wallpiece (make-adt-position 16 6))
                   ;(make-adt-wallpiece (make-adt-position 15 6))
                   (make-adt-wallpiece (make-adt-position 14 6))
                   (make-adt-wallpiece (make-adt-position 13 6))
                   (make-adt-wallpiece (make-adt-position 12 6))
                   (make-adt-wallpiece (make-adt-position 11 6))
                   (make-adt-wallpiece (make-adt-position 10 6))
                   (make-adt-wallpiece (make-adt-position 9 6))
                   (make-adt-wallpiece (make-adt-position 8 6))
                   (make-adt-wallpiece (make-adt-position 7 6))
                   (make-adt-wallpiece (make-adt-position 6 6))
                   (make-adt-wallpiece (make-adt-position 5 6))
                   (make-adt-wallpiece (make-adt-position 4 6)) 
                   (make-adt-wallpiece (make-adt-position 3 6))
                   (make-adt-wallpiece (make-adt-position 2 6))
                   (make-adt-wallpiece (make-adt-position 1 6))

                    ;; ROW Y=7
                   (make-adt-wallpiece (make-adt-position 19 7))
                   (make-adt-wallpiece (make-adt-position 18 7))
                   (make-adt-wallpiece (make-adt-position 17 7))
                   (make-adt-wallpiece (make-adt-position 16 7))
                   ;(make-adt-wallpiece (make-adt-position 15 7))
                  ; (make-adt-wallpiece (make-adt-position 14 7))
                   ;(make-adt-wallpiece (make-adt-position 13 7))
                   ;(make-adt-wallpiece (make-adt-position 12 7))
                   ;(make-adt-wallpiece (make-adt-position 11 7))
                   ;(make-adt-wallpiece (make-adt-position 10 7))
                   ;(make-adt-wallpiece (make-adt-position 9 7))
                   ;(make-adt-wallpiece (make-adt-position 8 7))
                   ;(make-adt-wallpiece (make-adt-position 7 7))
                   ;(make-adt-wallpiece (make-adt-position 6 7))
                   ;(make-adt-wallpiece (make-adt-position 5 7))
                   ;(make-adt-wallpiece (make-adt-position 4 7)) 
                   ;(make-adt-wallpiece (make-adt-position 3 7))
                   ;(make-adt-wallpiece (make-adt-position 2 7))
                   ;(make-adt-wallpiece (make-adt-position 1 7))


                    ;; ROW Y=8
                   (make-adt-wallpiece (make-adt-position 19 8))
                   (make-adt-wallpiece (make-adt-position 18 8))
                   (make-adt-wallpiece (make-adt-position 17 8))
                   (make-adt-wallpiece (make-adt-position 16 8))
                   ;(make-adt-wallpiece (make-adt-position 15 8))
                   ;(make-adt-wallpiece (make-adt-position 14 8))
                   ;(make-adt-wallpiece (make-adt-position 13 8))
                   ;(make-adt-wallpiece (make-adt-position 12 8))
                   ;(make-adt-wallpiece (make-adt-position 11 8))
                   ;(make-adt-wallpiece (make-adt-position 10 8))
                   ;(make-adt-wallpiece (make-adt-position 9 8))
                   (make-adt-wallpiece (make-adt-position 8 8))
                   ;(make-adt-wallpiece (make-adt-position 7 8))
                   (make-adt-wallpiece (make-adt-position 6 8))
                   ;(make-adt-wallpiece (make-adt-position 5 8))
                   (make-adt-wallpiece (make-adt-position 4 8))
                   ;(make-adt-wallpiece (make-adt-position 3 8))
                   (make-adt-wallpiece (make-adt-position 2 8))
                   ;(make-adt-wallpiece (make-adt-position 1 8))


                    ;; ROW Y=9
                   (make-adt-wallpiece (make-adt-position 19 9))
                   (make-adt-wallpiece (make-adt-position 18 9))
                   (make-adt-wallpiece (make-adt-position 17 9))
                   (make-adt-wallpiece (make-adt-position 16 9))
                   ;(make-adt-wallpiece (make-adt-position 15 9))
                   (make-adt-wallpiece (make-adt-position 14 9))
                   (make-adt-wallpiece (make-adt-position 13 9))
                   (make-adt-wallpiece (make-adt-position 12 9))
                   (make-adt-wallpiece (make-adt-position 11 9))
                   (make-adt-wallpiece (make-adt-position 10 9))
                   (make-adt-wallpiece (make-adt-position 9 9))
                   (make-adt-wallpiece (make-adt-position 8 9))
                   (make-adt-wallpiece (make-adt-position 7 9))
                   (make-adt-wallpiece (make-adt-position 6 9))
                   (make-adt-wallpiece (make-adt-position 5 9))
                   (make-adt-wallpiece (make-adt-position 4 9))
                   (make-adt-wallpiece (make-adt-position 3 9))
                   (make-adt-wallpiece (make-adt-position 2 9))
                   ;(make-adt-wallpiece (make-adt-position 1 9))


                    ;; ROW Y=10
                   (make-adt-wallpiece (make-adt-position 19 10))
                   (make-adt-wallpiece (make-adt-position 18 10))
                   (make-adt-wallpiece (make-adt-position 17 10))
                   (make-adt-wallpiece (make-adt-position 16 10))
                   ;(make-adt-wallpiece (make-adt-position 15 10))
                   (make-adt-wallpiece (make-adt-position 14 10))
                   (make-adt-wallpiece (make-adt-position 13 10))
                   (make-adt-wallpiece (make-adt-position 12 10))
                   ;(make-adt-wallpiece (make-adt-position 11 10))
                   ;(make-adt-wallpiece (make-adt-position 10 10))
                   ;(make-adt-wallpiece (make-adt-position 9 10))
                   ;(make-adt-wallpiece (make-adt-position 8 10))
                   ;(make-adt-wallpiece (make-adt-position 7 10))
                   ;(make-adt-wallpiece (make-adt-position 6 10))
                   ;(make-adt-wallpiece (make-adt-position 5 10))
                   ;(make-adt-wallpiece (make-adt-position 4 10))
                   ;(make-adt-wallpiece (make-adt-position 3 10))
                   ;(make-adt-wallpiece (make-adt-position 2 10))
                   ;(make-adt-wallpiece (make-adt-position 1 10))

                    ;; ROW Y=11
                   (make-adt-wallpiece (make-adt-position 19 11))
                   (make-adt-wallpiece (make-adt-position 18 11))
                   (make-adt-wallpiece (make-adt-position 17 11))
                   (make-adt-wallpiece (make-adt-position 16 11))
                   ;(make-adt-wallpiece (make-adt-position 15 11))
                   (make-adt-wallpiece (make-adt-position 14 11))
                   (make-adt-wallpiece (make-adt-position 13 11))
                   (make-adt-wallpiece (make-adt-position 12 11))
                   ;(make-adt-wallpiece (make-adt-position 11 11))
                   (make-adt-wallpiece (make-adt-position 10 11))
                   (make-adt-wallpiece (make-adt-position 9 11))
                   (make-adt-wallpiece (make-adt-position 8 11))
                   (make-adt-wallpiece (make-adt-position 7 11))
                   (make-adt-wallpiece (make-adt-position 6 11))
                   (make-adt-wallpiece (make-adt-position 5 11))
                   (make-adt-wallpiece (make-adt-position 4 11))
                   (make-adt-wallpiece (make-adt-position 3 11))
                   (make-adt-wallpiece (make-adt-position 2 11))
                   (make-adt-wallpiece (make-adt-position 1 11))

                    ;; ROW Y=12
                   (make-adt-wallpiece (make-adt-position 19 12))
                   ;(make-adt-wallpiece (make-adt-position 18 12))
                   ;(make-adt-wallpiece (make-adt-position 17 12))
                   ;(make-adt-wallpiece (make-adt-position 16 12))
                   ;(make-adt-wallpiece (make-adt-position 15 12))
                   ;(make-adt-wallpiece (make-adt-position 14 12))
                   ;(make-adt-wallpiece (make-adt-position 13 12))
                   ;(make-adt-wallpiece (make-adt-position 12 12))
                   ;(make-adt-wallpiece (make-adt-position 11 12))
                   ;(make-adt-wallpiece (make-adt-position 10 12))
                   ;(make-adt-wallpiece (make-adt-position 9 12))
                   ;(make-adt-wallpiece (make-adt-position 8 12))
                   ;(make-adt-wallpiece (make-adt-position 7 12))
                   ;(make-adt-wallpiece (make-adt-position 6 12))
                   ;(make-adt-wallpiece (make-adt-position 5 12))
                   ;(make-adt-wallpiece (make-adt-position 4 12))
                   ;(make-adt-wallpiece (make-adt-position 3 12))
                   ;(make-adt-wallpiece (make-adt-position 2 12))
                   ;(make-adt-wallpiece (make-adt-position 1 12))

                   ;; ROW Y=13
                   (make-adt-wallpiece (make-adt-position 19 13))
                   ;(make-adt-wallpiece (make-adt-position 18 13))
                   (make-adt-wallpiece (make-adt-position 17 13))
                   (make-adt-wallpiece (make-adt-position 16 13))
                   (make-adt-wallpiece (make-adt-position 15 13))
                   (make-adt-wallpiece (make-adt-position 14 13))
                   (make-adt-wallpiece (make-adt-position 13 13))
                   (make-adt-wallpiece (make-adt-position 12 13))
                   ;(make-adt-wallpiece (make-adt-position 11 13))
                   ;(make-adt-wallpiece (make-adt-position 10 13))
                   ;(make-adt-wallpiece (make-adt-position 9 13))
                   ;(make-adt-wallpiece (make-adt-position 8 13))
                   ;(make-adt-wallpiece (make-adt-position 7 13))
                   ;(make-adt-wallpiece (make-adt-position 6 13))
                   ;(make-adt-wallpiece (make-adt-position 5 13))
                   ;(make-adt-wallpiece (make-adt-position 4 13))
                   ;(make-adt-wallpiece (make-adt-position 3 13))
                   ;(make-adt-wallpiece (make-adt-position 2 13))
                   ;(make-adt-wallpiece (make-adt-position 1 13))

                   ;; ROW Y=14
                   (make-adt-wallpiece (make-adt-position 19 14))
                   ;(make-adt-wallpiece (make-adt-position 18 14))
                   (make-adt-wallpiece (make-adt-position 17 14))
                   (make-adt-wallpiece (make-adt-position 16 14))
                   (make-adt-wallpiece (make-adt-position 15 14))
                   (make-adt-wallpiece (make-adt-position 14 14))
                   (make-adt-wallpiece (make-adt-position 13 14))
                   (make-adt-wallpiece (make-adt-position 12 14))
                   (make-adt-wallpiece (make-adt-position 11 14))
                   (make-adt-wallpiece (make-adt-position 10 14))
                   (make-adt-wallpiece (make-adt-position 9 14))
                   (make-adt-wallpiece (make-adt-position 8 14))
                   (make-adt-wallpiece (make-adt-position 7 14))
                   (make-adt-wallpiece (make-adt-position 6 14))
                   (make-adt-wallpiece (make-adt-position 5 14))
                   (make-adt-wallpiece (make-adt-position 4 14))
                   (make-adt-wallpiece (make-adt-position 3 14))
                   (make-adt-wallpiece (make-adt-position 2 14))
                   (make-adt-wallpiece (make-adt-position 1 14))

                   ;; ROW Y=15
                   (make-adt-wallpiece (make-adt-position 19 15))
                   ;(make-adt-wallpiece (make-adt-position 18 15))
                   ;(make-adt-wallpiece (make-adt-position 17 15))
                   ;(make-adt-wallpiece (make-adt-position 16 15))
                   ;(make-adt-wallpiece (make-adt-position 15 15))
                   ;(make-adt-wallpiece (make-adt-position 14 15))
                   ;(make-adt-wallpiece (make-adt-position 13 15))
                   ;(make-adt-wallpiece (make-adt-position 12 15))
                   ;(make-adt-wallpiece (make-adt-position 11 15))
                   ;(make-adt-wallpiece (make-adt-position 10 15))
                   ;(make-adt-wallpiece (make-adt-position 9 15))
                   ;(make-adt-wallpiece (make-adt-position 8 15))
                   ;(make-adt-wallpiece (make-adt-position 7 15))
                   ;(make-adt-wallpiece (make-adt-position 6 15))
                   ;(make-adt-wallpiece (make-adt-position 5 15))
                   ;(make-adt-wallpiece (make-adt-position 4 15))
                   ;(make-adt-wallpiece (make-adt-position 3 15))
                   ;(make-adt-wallpiece (make-adt-position 2 15))
                   ;(make-adt-wallpiece (make-adt-position 1 15))

                     ;; ROW Y=16
                   (make-adt-wallpiece (make-adt-position 19 16))
                   ;(make-adt-wallpiece (make-adt-position 18 16))
                   (make-adt-wallpiece (make-adt-position 17 16))
                   ;(make-adt-wallpiece (make-adt-position 16 16))
                   (make-adt-wallpiece (make-adt-position 15 16))
                   ;(make-adt-wallpiece (make-adt-position 14 16))
                   (make-adt-wallpiece (make-adt-position 13 16))
                   ;(make-adt-wallpiece (make-adt-position 12 16))
                   (make-adt-wallpiece (make-adt-position 11 16))
                   ;(make-adt-wallpiece (make-adt-position 10 16))
                   (make-adt-wallpiece (make-adt-position 9 16))
                   ;(make-adt-wallpiece (make-adt-position 8 16))
                   (make-adt-wallpiece (make-adt-position 7 16))
                   ;(make-adt-wallpiece (make-adt-position 6 16))
                   (make-adt-wallpiece (make-adt-position 5 16))
                   ;(make-adt-wallpiece (make-adt-position 4 16))
                   (make-adt-wallpiece (make-adt-position 3 16))
                   ;(make-adt-wallpiece (make-adt-position 2 16))
                   (make-adt-wallpiece (make-adt-position 1 16))


                      ;; ROW Y=17
                   
                   ;(make-adt-wallpiece (make-adt-position 18 17))
                   (make-adt-wallpiece (make-adt-position 17 17))
                   (make-adt-wallpiece (make-adt-position 16 17))
                   ;(make-adt-wallpiece (make-adt-position 15 17))
                   ;(make-adt-wallpiece (make-adt-position 14 17))
                   (make-adt-wallpiece (make-adt-position 13 17))
                   (make-adt-wallpiece (make-adt-position 12 17))
                   ;(make-adt-wallpiece (make-adt-position 11 17))
                   ;(make-adt-wallpiece (make-adt-position 10 17))
                   (make-adt-wallpiece (make-adt-position 9 17))
                   (make-adt-wallpiece (make-adt-position 8 17))
                   ;(make-adt-wallpiece (make-adt-position 7 17))
                   ;(make-adt-wallpiece (make-adt-position 6 17))
                   (make-adt-wallpiece (make-adt-position 5 17))
                   (make-adt-wallpiece (make-adt-position 4 17))
                   ;(make-adt-wallpiece (make-adt-position 3 17))
                   ;(make-adt-wallpiece (make-adt-position 2 17))
                   (make-adt-wallpiece (make-adt-position 1 17))

                      ;; ROW Y=18
                   
                   (make-adt-wallpiece (make-adt-position 19 18))
                   ;(make-adt-wallpiece (make-adt-position 18 18))
                   ;(make-adt-wallpiece (make-adt-position 17 18))
                   ;(make-adt-wallpiece (make-adt-position 16 18))
                   ;(make-adt-wallpiece (make-adt-position 15 18))
                   (make-adt-wallpiece (make-adt-position 14 18))
                   (make-adt-wallpiece (make-adt-position 13 18))
                   (make-adt-wallpiece (make-adt-position 12 18))
                   (make-adt-wallpiece (make-adt-position 11 18))
                   (make-adt-wallpiece (make-adt-position 10 18))
                   (make-adt-wallpiece (make-adt-position 9 18))
                   (make-adt-wallpiece (make-adt-position 8 18))
                   (make-adt-wallpiece (make-adt-position 7 18))
                   (make-adt-wallpiece (make-adt-position 6 18))
                   (make-adt-wallpiece (make-adt-position 5 18))
                   (make-adt-wallpiece (make-adt-position 4 18))
                   (make-adt-wallpiece (make-adt-position 3 18))
                   (make-adt-wallpiece (make-adt-position 2 18))
                   (make-adt-wallpiece (make-adt-position 1 18))

                   

                    ;; BOT ROW
                   (make-adt-wallpiece (make-adt-position 19 19))
                   (make-adt-wallpiece (make-adt-position 18 19))
                   (make-adt-wallpiece (make-adt-position 17 19))
                   (make-adt-wallpiece (make-adt-position 16 19))
                   ;(make-adt-wallpiece (make-adt-position 15 19)) ;; end pos ant
                   (make-adt-wallpiece (make-adt-position 14 19))
                   (make-adt-wallpiece (make-adt-position 13 19))
                   (make-adt-wallpiece (make-adt-position 12 19))
                   (make-adt-wallpiece (make-adt-position 11 19))
                   (make-adt-wallpiece (make-adt-position 10 19))
                   (make-adt-wallpiece (make-adt-position 9 19))
                   (make-adt-wallpiece (make-adt-position 8 19))
                   (make-adt-wallpiece (make-adt-position 7 19))
                   (make-adt-wallpiece (make-adt-position 6 19))
                   (make-adt-wallpiece (make-adt-position 5 19))
                   (make-adt-wallpiece (make-adt-position 4 19))
                   (make-adt-wallpiece (make-adt-position 3 19))
                   (make-adt-wallpiece (make-adt-position 2 19))
                   (make-adt-wallpiece (make-adt-position 1 19))
                   (make-adt-wallpiece (make-adt-position 0 19))


                   ;; RIGHT ROW
                   (make-adt-wallpiece (make-adt-position 19 19))
                   (make-adt-wallpiece (make-adt-position 19 18))
                   (make-adt-wallpiece (make-adt-position 19 17))
                   (make-adt-wallpiece (make-adt-position 19 16))
                   (make-adt-wallpiece (make-adt-position 19 15))
                   (make-adt-wallpiece (make-adt-position 19 14))
                   (make-adt-wallpiece (make-adt-position 19 13))
                   (make-adt-wallpiece (make-adt-position 19 12))
                   (make-adt-wallpiece (make-adt-position 19 11))
                   (make-adt-wallpiece (make-adt-position 19 10))
                   (make-adt-wallpiece (make-adt-position 19 9))
                   (make-adt-wallpiece (make-adt-position 19 8))
                   (make-adt-wallpiece (make-adt-position 19 7))
                   (make-adt-wallpiece (make-adt-position 19 6))
                   (make-adt-wallpiece (make-adt-position 19 5))
                   (make-adt-wallpiece (make-adt-position 19 4))
                   (make-adt-wallpiece (make-adt-position 19 3))
                   (make-adt-wallpiece (make-adt-position 19 2))
                   (make-adt-wallpiece (make-adt-position 19 1))
                   (make-adt-wallpiece (make-adt-position 19 0))

                  

                   ;; LEFT ROW
                   (make-adt-wallpiece (make-adt-position 0 19))
                   (make-adt-wallpiece (make-adt-position 0 18))
                   (make-adt-wallpiece (make-adt-position 0 17))
                   (make-adt-wallpiece (make-adt-position 0 16))
                   (make-adt-wallpiece (make-adt-position 0 15))
                   (make-adt-wallpiece (make-adt-position 0 14))
                   (make-adt-wallpiece (make-adt-position 0 13))
                   (make-adt-wallpiece (make-adt-position 0 12))
                   (make-adt-wallpiece (make-adt-position 0 11))
                   (make-adt-wallpiece (make-adt-position 0 10))
                   (make-adt-wallpiece (make-adt-position 0 9))
                   (make-adt-wallpiece (make-adt-position 0 8))
                   (make-adt-wallpiece (make-adt-position 0 7))
                   (make-adt-wallpiece (make-adt-position 0 6))
                   (make-adt-wallpiece (make-adt-position 0 5))
                   (make-adt-wallpiece (make-adt-position 0 4))
                   (make-adt-wallpiece (make-adt-position 0 3))
                   (make-adt-wallpiece (make-adt-position 0 2))
                   (make-adt-wallpiece (make-adt-position 0 1))
                   (make-adt-wallpiece (make-adt-position 0 0))

                   )))

    ;;
    

    ;; exec
    (make-maze)


    ;(set! walls (mazelevels 'level1)))

    ;(display walls)




    

;;---------------------------------------------------------------------------
    
    ;; for every wall
    (define (for-every-wall f)
      (map f walls))


    
;;---------------------------------------------------------------------------  
      



    (define (dispatch-wall msg)
      (cond ((eq? msg 'position!) position!)
            ((eq? msg 'position) position)
            ((eq? msg 'for-every-wall) for-every-wall)
            ((eq? msg 'wall-list) walls)
                 
            (else
             (display "error-wall-adt"))))


    dispatch-wall))