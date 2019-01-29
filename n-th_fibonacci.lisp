; n-th fibonacci number
(defun fib(n)
	(if
		(<= n 1) n
		(+ (fib(- n 1)) (fib(- n 2)))
	)
)
(write-line "enter no")
(setq n (read))
(format t "the ~d-th fibonacci no is: ~d" n (fib n))