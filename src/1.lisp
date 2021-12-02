(defun get-file (filename)
    (with-open-file (stream filename)
        (loop for line = (read stream nil)
            while line
            collect line)))

(defun check-list (lst)
    (loop for (first second) on lst while second count (< first second)))

(defun check-list-three (lst)
    (loop for (first second third fourth) on lst while fourth count (< (+ first second third) (+ second third fourth))))

(format t "First Challenge: ~A~%" (check-list(get-file "../input/1.txt")))
(format t "Second Challenge: ~A~%" (check-list-three(get-file "../input/1.txt")))
