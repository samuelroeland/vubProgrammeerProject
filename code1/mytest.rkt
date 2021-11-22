(#%require "Graphics.rkt")

(#%require (only racket random error))


(define venster (make-window 800 600 "Hello World"))

((venster 'set-background!) "blue")




(define mijn-eerste-laag (venster 'make-layer))

(define mijn-tile (make-tile 200 100))

((mijn-tile 'draw-rectangle) 10 10 180 80 "red")
((mijn-tile 'draw-text) "Hello World" 12 100 30 "white")

((mijn-eerste-laag 'add-drawable) mijn-tile)



((mijn-tile 'set-x!) 500)
((mijn-tile 'set-y!) 300)