;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname les5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Data definition:

;; ListOfNumber is one of:
;; - empty
;; - (cons Number ListOfNumber)

(define LON1 empty)
(define LON2 (cons 60 (cons 42 empty)))

#;
(define (fn-for-lon lon)
  (cond [(empty? lon) (...)]
        [else
         (... (first lon)
              (fn-for-lon (rest lon)))]))

;; Template rules used:
;; - one of: 2 cases
;; - atomic distinct: empty
;; - compound: (cond Number ListOfNumber)
;; - self-reference: (rest lon) is ListOFnUMBER


;; Functions:

;; ListOfNumber -> Number
;; produce total weight of owls in consumed list
(check-expect (sum empty) 0)
(check-expect (sum (cons 42 empty)) 42)
(check-expect (sum (cons 2 (cons 42 empty))) 44)

; (define (sum lon) 0) ; stub

(define (sum lon)
  (cond [(empty? lon) 0]
        [else
         (+ (first lon)
              (sum (rest lon)))]))

