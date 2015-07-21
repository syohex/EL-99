;;; p21.el --- problem21

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

(defun p21/insert-at (elm index lst)
  "Insert an element at a given position into a list."
  (cl-labels ((-insert-at (elm i index lst acc)
                          (if (= i index)
                              (append (reverse acc) (list elm) lst)
                            (-insert-at elm (1+ i) index (cdr lst) (cons (car lst) acc)))))
    (-insert-at elm 0 index lst nil)))

(provide 'p21)

;;; p21.el ends here
