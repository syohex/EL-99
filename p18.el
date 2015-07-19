;;; p18.el --- problem18

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

(defun p18/slice (start end lst)
  "Extract a slice from a list."
  (cl-labels ((-slice (i start end lst acc)
                      (if (= i end)
                          (reverse acc)
                        (if (and (>= i start) (< i end))
                            (-slice (1+ i) start end (cdr lst) (cons (car lst) acc))
                          (-slice (1+ i) start end (cdr lst) acc)))))
    (-slice 0 start end lst nil)))

(provide 'p18)

;;; p18.el ends here
