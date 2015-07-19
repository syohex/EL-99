;;; p08.el --- problem08

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

(defun p08/compress (lst)
  "Eliminate consecutive duplicates of list elements."
  (when (not (null lst))
   (let (ret
         prev)
     (dolist (x lst)
       (unless (equal x prev)
         (push x ret)
         (setq prev x)))
     (reverse ret))))

(provide 'p08)

;;; p08.el ends here
