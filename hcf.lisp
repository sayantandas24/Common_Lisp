; hcf of two numbers
(defun hcf(a b)
	(if
		(= a 0) b
		(hcf (mod b a) a)
	)
)
(write-line "enter no 1: ")
(setq a (read))
(write-line "enter no 2: ")
(setq b (read))
(format t "the HCF is: ~d"  (hcf a b))