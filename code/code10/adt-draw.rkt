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
        
    
;-----------------------------------------------------------------


    ;;;;;;;;;;;;;;
    ;; Egg Tile ;;
    ;;;;;;;;;;;;;;

    (define egg-layer (window 'make-layer))
    (define egg-tile
      (make-bitmap-tile "images/egg.png" "images/egg-mask.png"))
    ((egg-layer 'add-drawable) egg-tile)
    


;-----------------------------------------------------------------
    
    ;;
    ;; Ant Tile
    
    (define ant-layer (window 'make-layer))
    (define ant-tile
      (make-bitmap-tile "images/ant.png" "images/ant-mask.png"))
    ((ant-layer 'add-drawable) ant-tile)

;-----------------------------------------------------------------


    ;;
    ;; Scorpion Tile
    ;;

    (define scorpion-layer (window 'make-layer))
    (define scorpion-tile
      (make-bitmap-tile "images/scorpion.png" "images/ant-mask.png"))
    ((scorpion-layer 'add-drawable) scorpion-tile)


    
;-----------------------------------------------------------------

    ;; change bitmap when ant goes left
    ;; change bitmap when ant goed right
    ;; change bitmap when ant goes up
    ;; change bitmap when ant goed down
    

;-----------------------------------------------------------------

    ;;
    ;; Wall
    ;;
    (define wall-layer (window 'make-layer))
    (define wall-tiles '())
    
    (define (add-wallpiece! wallpiece-adt)
      (let ((new-tile
             (make-bitmap-tile "images/wall6.png" "images/wall-mask6.png")))
        (set! wall-tiles (cons (cons wallpiece-adt new-tile) wall-tiles))
        ((wall-layer 'add-drawable) new-tile)
        new-tile))


    (define (take-wallpiece wallpiece-adt)
      (let ((result (assoc wallpiece-adt wall-tiles)))
        (if result
            (cdr result)
            (add-wallpiece! wallpiece-adt))))


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
    ;; Wallpiece
    ;;
    (define (draw-wallpiece! wallpiece-adt)
      (let ((tile (take-wallpiece wallpiece-adt)))
        (draw-object! wallpiece-adt tile)))

;-----------------------------------------------------------------

    ;;
    ;; Wall
    ;;
    (define (draw-wall! wall-adt)
      ((wall-adt 'for-every-wall) draw-wallpiece!))
    
;-----------------------------------------------------------------
    ;;
    ;; Ant
    ;;
    
    ;; draw-ant :: ant-adt -> ant
    (define (draw-ant! ant-adt)
      (draw-object! ant-adt ant-tile))

;-----------------------------------------------------------------

    ;;
    ;; Scorpion
    ;;
    (define (draw-scorpion! scorpion-adt)
      (draw-object! scorpion-adt scorpion-tile))



;-----------------------------------------------------------------

    ;;
    ;; Egg
    ;;
    (define (draw-egg! egg-adt)
      (if egg-adt
          (draw-object! egg-adt egg-tile)))



;-----------------------------------------------------------------

    (define (draw-game! game-adt)
      (draw-level! (game-adt 'level)))


    (define (draw-level! level-adt)
      (draw-ant! (level-adt 'ant))
      (draw-scorpion! (level-adt 'scorpion))
      (draw-wall! (level-adt 'wall))
      (draw-egg! (level-adt 'egg)))

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