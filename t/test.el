;;; test.el --- test 99 problems

;; Copyright (C) 2015 by Syohei YOSHIDA

;; Author: Syohei YOSHIDA <syohex@gmail.com>

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

(require 'ert)

(require 'p01)
(ert-deftest p01/last ()
  "Find the last element of a list"
  (should (equal (p01/last '(1 1 2 3 5 8)) 8))
  (should (null (p01/last '()))))

(require 'p02)
(ert-deftest p02/last-but-one ()
  "Find the last but one element of a list"
  (should (equal (p02/last-but-one '(1 1 2 3 5 8)) 5)))

(require 'p03)
(ert-deftest p03/nth ()
  "Find the Kth element of a list.
By convention, the first element in the list is element 0."
  (should (equal (p03/nth 2 '(1 1 2 3 5 8)) 2)))

(require 'p04)
(ert-deftest p04/length ()
  "Find the number of elements of a list."
  (should (= (p04/length '(1 1 2 3 5 8)) 6)))

(require 'p05)
(ert-deftest p05/reverse ()
  "Find the number of elements of a list."
  (should (equal (p05/reverse '(1 1 2 3 5 8)) '(8 5 3 2 1 1))))

;;; test.el ends here
