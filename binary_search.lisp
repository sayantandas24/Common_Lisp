(defun binary_search(arr l r x)
	(cond
		((>= r l)
			(setq mid (truncate (+ l (/ (- r l) 2))))
			(cond
				((= (aref arr mid) x) mid)
				((> (aref arr mid) x) (binary_search arr l (- mid 1) x))
				((< (aref arr mid) x) (binary_search arr (+ mid 1) r x))
			)		
		)
		((< r l) -1)
	)
)

(write-line "enter total number of elements: ")
(setq n (read))
(setf arr (make-array n))
(write-line "enter the numbers in non-decreasing order:")
(loop for i from 0 to (- n 1) do
	(setf (aref arr i) (read))
)
(write-line "enter the number to be searched:")
(setq num (read))
; (loop for i from 0 to (- n 1) do
; 	(print (aref arr i))
; 	; (setq (aref arr i) (read))
; 	; (setf (aref my-array 0) 25)
; )
(setq b_s (binary_search arr 0 (- n 1) num))
(if
	(= b_s -1)
		(write-line "number not found")
	(format t "the number is at position ~d"  (+ b_s 1))
)