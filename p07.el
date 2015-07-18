;;; p07.el --- problem07

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

(defun p07/flatten (lst)
  "Flatten a nested list structure."
  (if (null lst)
      nil
    (if (not (listp (car lst)))
        (cons (car lst) (p07/flatten (cdr lst)))
      (append (p07/flatten (car lst)) (p07/flatten (cdr lst))))))

(provide 'p07)

;;; p07.el ends here
