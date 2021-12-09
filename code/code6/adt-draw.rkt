;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                          ADT DRAW                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




(define (make-adt-draw pixels-horizontal pixels-vertical)
  (let ((window (make-window window-width-px window-height-px "Fire Ant")))

    ((window 'set-background!) "black")


   



    


;-----------------------------------------------------------------


    ;;;;;;;;;;;;;;;;
    ;; DRAW LOGIC ;;
    ;;;;;;;;;;;;;;;;
        
    




    
    ;;
    ;; Ant Tile
    
    (define ant-layer (window 'make-layer))
    (define ant-tile
      (make-bitmap-tile "images/ant.png" "images/ant-mask.png"))
    ((ant-layer 'add-drawable) ant-tile)




    ;;
    ;; Wall
    ;;
    (define wall-layer (window 'make-layer))
    (define wall-tile
      (make-bitmap-tile "images/wall.png" "images/wall-mask2.png"))
    ((wall-layer 'add-drawable) wall-tile)


;-----------------------------------------------------------------
    
    ;;;;;;;;;;;;;;;;;;;;
    ;; DRAW FUNCTIONS ;;
    ;;;;;;;;;;;;;;;;;;;;
    (define (draw-object! obj tile)
      (let* ((obj-x ((obj 'position) 'x))
             (obj-y ((obj 'position) 'y))
             (screen-x (* cel-width-px obj-x))
             (screen-y (* cel-height-px obj-y)))
        ((tile 'set-x!) screen-x)
        ((tile 'set-y!) screen-y)))


       



    
;-----------------------------------------------------------------
    ;;
    ;; Ant
    ;;
    
    ;; draw-ant :: ant-adt -> ant
    (define (draw-ant! ant-adt)
      (draw-object! ant-adt ant-tile))

;-----------------------------------------------------------------
    ;;
    ;; Wall
    ;;
    (define (draw-wall! wall-adt)
      (draw-object! wall-adt wall-tile)
      (display "draw wall!"))
    

    



;-----------------------------------------------------------------  

    (define (draw-game! game-adt)
      (draw-level! (game-adt 'level)))


    (define (draw-level! level-adt)
      (draw-ant! (level-adt 'ant))
      (draw-wall! (level-adt 'wall)))

;----------------------------------------------------------------- 

    ;;;;;;;;;;;;;;;
    ;; Callbacks ;;
    ;;;;;;;;;;;;;;;
    
    ;; Welke functie moet er meegegeven worden aan set-game-loop-function! ??
    (define (set-game-loop-function! fun)
      ((window 'set-update-callback!) fun))


    (define (set-key-function! fun)
      ((window 'set-key-callback!) fun))
    
    

    (define (dispatch-draw-adt msg)
      (cond ((eq? msg 'set-game-loop-function!) set-game-loop-function!)
            ((eq? msg 'set-key-function!) set-key-function!)
            ((eq? msg 'draw-game!) draw-game!)
            (else
             (display "MAKE-ADT-DRAW ELSE BRANCH"))))

    dispatch-draw-adt))