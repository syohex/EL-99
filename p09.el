;;; p09.el --- problem09

;; Copyright (C) 2015 by Syohei YOSHIDA

;; Author: Syohei YOSHIDA <syohex@gmail.com>
;; URL: https://github.com/syohex/emacs-99problems
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

(defun p09/pack (lst)
  "Pack consecutive duplicates of list elements into sublists."
  (cl-labels ((-pack (lst prev count acc)
                     (if (null lst)
                         (reverse (cons (cons prev count) acc))
                      (if (not (equal (car lst) prev))
                          (-pack (cdr lst) (car lst) 1 (if (zerop count)
                                                           acc
                                                         (cons (cons prev count) acc)))
                        (-pack (cdr lst) prev (1+ count) acc)))))
    (let ((ss (-pack lst nil 0 nil)))
      (cl-loop for (e . count) in ss
               collect (cl-loop repeat count
                                collect e)))))

(provide 'p09)

;;; p09.el ends here
