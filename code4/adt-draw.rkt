;;;;;;;;;;;;;;
;; DRAW ADT ;;
;;;;;;;;;;;;;;




(define (make-adt-draw pixels-horizontal pixels-vertical)
  (let ((window (make-window window-width-px window-height-px "Fire Ant")))

    ((window 'set-background!) "black")


   



    

    
    ;;;;;;;;;;;;;;;;;;;;
    ;; DRAW FUNCTIONS ;;
    ;;;;;;;;;;;;;;;;;;;;
    (define (draw-object! obj tile)
      (let* ((obj-x ((obj 'position) 'x))
             (obj-y ((obj 'position) 'y))
             (screen-x (* cel-breedte-px obj-x))
             (screen-y (* cel-hoogte-px obj-y)))
        ((tile 'x!) screen-x)
        ((tile 'y!) screen-y)))




    ;;;;;;;;;;;;;;;;
    ;; DRAW LOGIC ;;
    ;;;;;;;;;;;;;;;;
        
    



    ;; draw ant
    (define ant-layer (window 'make-layer))


    
    (define ant-tile
      (make-bitmap-tile "images/ant.png" "images/ant-mask.png"))

    
    ;((ant-layer 'add-drawable) ant-tile)


    ;; draw-ant :: ant-adt -> ant
    (define (draw-ant! ant-adt)


      ((ant-layer 'add-drawable) ant-tile))
      
      ;(display "draw adt: drawing ant"))
      
      ;(draw-object! ant-adt ant-tile))
      


    


    ;; Bij het veranderen van ant-tile x of y kan de ant van plaats veranderen.
    ;;
    ;;((ant-tile 'set-x!) 300)
    ;;((ant-tile 'set-y!) 300)
        
    



    

    ;;;;;;;;;;;;;;;
    ;; Callbacks ;;
    ;;;;;;;;;;;;;;;
    
    ;; Welke functie moet er meegegeven worden aan set-game-loop-function! ??
    (define (set-game-loop-function! fun)
      ((window 'set-update-callback!) fun))
       
    
    

    (define (dispatch-draw-adt msg)
      (cond ((eq? msg 'set-game-loop-function!) set-game-loop-function!)
            ((eq? msg 'draw-ant!) draw-ant!)
            (else
             (display "MAKE-ADT-DRAW ELSE BRANCH"))))

    dispatch-draw-adt))