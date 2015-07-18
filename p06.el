;;; p06.el --- problem06

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

(defun p06/is-palindrome (lst)
  "Find out whether a list is a palindrome."
  (equal lst (reverse lst)))

(provide 'p06)

;;; p06.el ends here
