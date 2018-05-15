(define (intlist x) (ifa x 1 (ifn x 0 (ifa (head x) (intlist (tail x)) 1))))


(define (reverse x)
	(helprev x []))

(define (helprev x y) (ifn x y (helprev (tail x) (list (head x) y))))

(define (recreverse x)
	(helprecrev x []))

(define (helprecrev x y)
	(ifn x y 
	(ifa (head x) 
	(helprecrev (tail x) (list (head x) y))
	(helprecrev (tail x) (list (recreverse (head x)) y))
	)
	)
	)