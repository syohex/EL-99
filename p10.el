;;; p10.el --- problem10

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

(defun p10/encode (lst)
  "Run-length encoding of a list"
  (cl-labels ((-encode (lst prev count acc)
                       (if (null lst)
                           (reverse (cons (cons count prev) acc))
                         (if (equal (car lst) prev)
                             (-encode (cdr lst) prev (1+ count) acc)
                           (-encode (cdr lst) (car lst) 1 (if (zerop count)
                                                              acc
                                                            (cons (cons count prev) acc)))))))
    (-encode lst nil 0 nil)))

(provide 'p10)

;;; p10.el ends here
