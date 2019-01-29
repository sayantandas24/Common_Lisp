; factorial of a number
(defun fac(n)
	(if
		(= n 0) 1
		(* n (fac(- n 1)))
	)
)
(write-line "enter no")
(setq n (read))
(write-line "the factorial of the number is: ")
(write (fac n))