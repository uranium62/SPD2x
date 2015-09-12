;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname les1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require 2htdp/image)

empty ; a empty list

(cons "Flames" empty) ; a list of 1 elem

(cons "Leafs" (cons "Flames" empty)) ; a list of 2 elems

(cons (string-append "C" "anucks") empty)

(cons 10 (cons 9 (cons 8 empty)))

(cons (square 10 "solid" "blue")
      (cons (triangle 20 "solid" "green")
      empty))


(define L1 (cons "Flames" empty))
(define L2 (cons "one" (cons "two" empty)))


(first L1)
(first L2)
(rest L1)
(rest L2)
(rest (rest L2))
(first (rest L2))

(empty? empty)
