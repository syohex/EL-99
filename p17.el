;;; p17.el --- problem17

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

(defun p17/split (n lst)
  "Split a list into two parts."
  (cl-labels ((-split (n lst acc)
                      (if (zerop n)
                          (cons (reverse acc) (list lst))
                        (-split (1- n) (cdr lst) (cons (car lst) acc)))))
    (-split n lst nil)))

(provide 'p17)

;;; p17.el ends here
