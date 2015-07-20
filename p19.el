;;; p19.el --- problem19

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

(defun p19/rotate (n lst)
  "Extract a slice from a list."
  (cl-labels ((-take (n lst)
                     (if (zerop n)
                         nil
                       (cons (car lst) (-take (1- n) (cdr lst)))))
              (-drop (n lst)
                     (if (zerop n)
                         lst
                       (-drop (1- n) (cdr lst)))))
    (if (>= n 0)
        (append (-drop n lst) (-take n lst))
      (let ((m (+ (length lst) n)))
        (append (-drop m lst) (-take m lst))))))

(provide 'p19)

;;; p19.el ends here
