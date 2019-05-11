(define
  (DaysInMonth month)
  (cond
    ((eq? month 'January) (display "31"))
    ((eq? month 'Febuary) (display "28/29"))
    ((eq? month 'March) (display "31"))
    ((eq? month 'April) (display "30"))
    ((eq? month 'May) (display "31"))
    ((eq? month 'June) (display "30"))
    ((eq? month 'July) (display "31"))
    ((eq? month 'August) (display "31"))
    ((eq? month 'September) (display "30"))
    ((eq? month 'October) (display "31"))
    ((eq? month 'November) (display "30"))
    ((eq? month 'December) (display "31"))
    (else (display "incorrect month!"))
    )
  )

(define
  (bagCoins pennies nickels dimes quarters)
  (/ (+
      pennies
      (* nickels 5)
      (* dimes 10)
      (* quarters 25)
      )
     100)
  )

(define pi 3.14159)

(define
  (SurfaceArea radius height)
  (+
   (* 2 pi radius height)
   (* 2 pi radius radius)
   )
  )

(define
  (fibonacci n)
  (cond
    ((< n 0) (display "incorrect input"))
    ((eq? n 0) 0)
    ((eq? n 1) 1)
    (else (+ (fibonacci (- n 1)) (fibonacci (- n 2))))
    )
  )

(define
  (double-it list)
  (cond
    ((null? list) '())
    (else
     (cons
      (* (car list) 2)
      (double-it (cdr list))
      )
     )
    )
  )