;;; p26.el --- problem26

;; Copyright (C) 2015 by Syohei YOSHIDA

;; Author: Syohei YOSHIDA <syohex@gmail.com>
;; Version: 0.01

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun p26/combinations (n lst)
  (cond ((> n (length lst)) nil)
        ((= n 1) (cl-loop for x in lst
                          collect (list x)))
        (t (let ((x1 (cl-loop with e = (car lst)
                              for xs in (p26/combinations (1- n) (cdr lst))
                              collect (cons e xs)))
                 (x2 (p26/combinations n (cdr lst))))
             (append x1 x2)))))

(provide 'p26)

;;; p26.el ends here
