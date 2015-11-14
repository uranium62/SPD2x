;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname les1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require 2htdp/image)

(define CUTOFF 2)

;; Number -> Image
;; prodect a Sirtp. Triangle of the given size
(check-expect (stri CUTOFF) (triangle CUTOFF "outline" "red"))
(check-expect (stri (* CUTOFF 2))
              (overlay (triangle (* 2 CUTOFF)  "outline" "red")
                       (local [(define sub (triangle CUTOFF "outline" "red"))]
                         (above sub (beside sub sub)))))

;(define (stri s) (square 0 "solid" "white")) ; stub

#;
(define (genrec-fn d)
  (cond [(trivial? d) (trivial-answer d)]
        [else
         (... d 
              (genrec-fn (next-problem d)))]))

(define (stri s)
  (if (<= s CUTOFF)
      (triangle s "outline" "red")
      (overlay (triangle s "outline" "red") 
           (local [(define sub (stri (/ s 2)))]
                         (above sub (beside sub sub))))))


;;(stri 300)



