;;; p20.el --- problem20

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

(defun p20/remove-at (n lst)
  "Remove the Kth element from a list."
  (cl-labels ((-remove-at (n i lst acc)
                          (if (= i n)
                              (list (append (reverse acc) (cdr lst)) (car lst))
                            (-remove-at n (1+ i) (cdr lst) (cons (car lst) acc)))))
    (-remove-at n 0 lst nil)))

(provide 'p20)

;;; p20.el ends here
