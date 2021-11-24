;;;;;;;;;;;;;;
;; DRAW ADT ;;
;;;;;;;;;;;;;;




(define (make-adt-draw pixels-horizontal pixels-vertical)
  (let ((window (make-window window-width-px window-height-px "Fire Ant")))

    ((window 'set-background!) "black")


   



    

    
    ;;;;;;;;;;;;;;;;;;;;
    ;; DRAW FUNCTIONS ;;
    ;;;;;;;;;;;;;;;;;;;;
    #;(define (draw-object! obj tile)
      (let* ((obj-x ((obj 'position) 'x))
             (obj-y ((obj 'position) 'y))
             (screen-x (* cel-breedte-px obj-x))
             (screen-y (* cel-hoogte-px obj-y)))
        ((tile 'x!) screen-x)
        ((tile 'y!) screen-y)))




    ;;;;;;;;;;;;;;;;
    ;; DRAW LOGIC ;;
    ;;;;;;;;;;;;;;;;
        
    (define first-layer (window 'make-layer))



    ;; draw ant
    (define ant-tile (make-bitmap-tile "images/ant.png" "images/ant-mask.png"))



    ;; draw first layer
    ((first-layer 'add-drawable) ant-tile)


    ((ant-tile 'set-x!) 200)
    ((ant-tile 'set-y!) 300)
        
    



    

    ;;;;;;;;;;;;;;;
    ;; Callbacks ;;
    ;;;;;;;;;;;;;;;
    
    ;; Welke functie moet er meegegeven worden aan set-game-loop-function! ??
    (define (set-game-loop-function! fun)
      ((window 'set-update-callback!) (lambda(x) (display "set-game-loop-function "))))
    
    

    (define (dispatch-draw-adt msg)
      (cond ((eq? msg 'set-game-loop-function!) set-game-loop-function!)
            (else
             (display "MAKE-ADT-DRAW ELSE BRANCH"))))

    dispatch-draw-adt))