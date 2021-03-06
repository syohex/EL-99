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

(require 'p06)
(ert-deftest p06/is-palindrome ()
  "Find out whether a list is a palindrome"
  (should (p06/is-palindrome '(1 2 3 2 1))))

(require 'p07)
(ert-deftest p07/flatten ()
  "Flatten a nested list structure"
  (should (equal (p07/flatten '((1 1) 2 (3 (5 8)))) '(1 1 2 3 5 8))))

(require 'p08)
(ert-deftest p08/compress ()
  "Eliminate consecutive duplicates of list elements"
  (should (equal (p08/compress '(a a a a b c c a a d e e e e))
                 '(a b c a d e))))

(require 'p09)
(ert-deftest p09/pack ()
  "Pack consecutive duplicates of list elements into sublists."
  (should (equal (p09/pack '(a a a a b c c a a d e e e e))
                 '((a a a a) (b) (c c) (a a) (d) (e e e e)))))

(require 'p10)
(ert-deftest p10/encode ()
  "Run-length encoding of a list"
  (should (equal (p10/encode '(a a a a b c c a a d e e e e))
                 '((4 . a) (1 . b) (2 . c) (2 . a) (1 . d) (4 . e)))))

(require 'p11)
(ert-deftest p11/encode-modified ()
  "Modified run-length encoding"
  (should (equal (p11/encode-modified '(a a a a b c c a a d e e e e))
                 '((4 . a) b (2 . c) (2 . a) d (4 . e)))))

(require 'p12)
(ert-deftest p12/decode ()
  "Decode a run-length encoded list"
  (should (equal (p12/decode '((4 . a) (1 . b) (2 . c) (2 . a) (1 . d) (4 . e)))
                 '(a a a a b c c a a d e e e e))))

(require 'p13)
(ert-deftest p13/encode-direct ()
  "Run-length encoding of a list (direct solution)"
  (should (equal (p13/encode-direct '(a a a a b c c a a d e e e e))
                 '((4 . a) (1 . b) (2 . c) (2 . a) (1 . d) (4 . e)))))

(require 'p14)
(ert-deftest p14/duplicate ()
  "Duplicate the elements of a list"
  (should (equal (p14/duplicate '(a b c c d))
                 '(a a b b c c c c d d))))

(require 'p15)
(ert-deftest p15/duplicate-n ()
  "Duplicate the elements of a list a given number of times"
  (should (equal (p15/duplicate-n 3 '(a b c c d))
                 '(a a a b b b c c c c c c d d d))))

(require 'p16)
(ert-deftest p16/duplicate-n ()
  "Drop every Nth element from a list"
  (should (equal (p16/drop 3 '(a b c d e f g h i j k))
                 '(a b d e g h j k))))

(require 'p17)
(ert-deftest p17/split ()
  "Split a list into two parts."
  (should (equal (p17/split 3 '(a b c d e f g h i j k))
                 '((a b c) (d e f g h i j k)))))

(require 'p18)
(ert-deftest p18/slice ()
  "Extract a slice from a list."
  (should (equal (p18/slice 3 7 '(a b c d e f g h i j k))
                 '(d e f g))))

(require 'p19)
(ert-deftest p19/rotate ()
  "Rotate a list N places to the left."
  (should (equal (p19/rotate 3 '(a b c d e f g h i j k))
                 '(d e f g h i j k a b c)))
  (should (equal (p19/rotate -2 '(a b c d e f g h i j k))
                 '(j k a b c d e f g h i))))

(require 'p20)
(ert-deftest p20/remove-at ()
  "Remove the Kth element from a list."
  (should (equal (p20/remove-at 1 '(a b c d))
                 '((a c d) b))))

(require 'p21)
(ert-deftest p21/insert-at ()
  "Insert an element at a given position into a list."
  (should (equal (p21/insert-at 'new 1 '(a b c d))
                 '(a new b c d))))

(require 'p22)
(ert-deftest p22/range ()
  "Create a list containing all integers within a given range."
  (should (equal (p22/range 4 9) '(4 5 6 7 8 9))))

(require 'p23)
(ert-deftest p23/random-select ()
  "Extract a given number of randomly selected elements from a list."
  (let ((got (p23/random-select 3 '(a b c d f g h))))
    (should (= (length got) 3))
    (should (= (length (delete-dups got)) 3))))

(require 'p25)
(ert-deftest p25/random-permute ()
  "Generate a random permutation of the elements of a list."
  (let ((got (p25/random-permute '(a b c d e f))))
    (should (= (length got) 6))
    (should (= (length (delete-dups got)) 6))))

(require 'p26)
(ert-deftest p26/combinations ()
  "Generate the combinations of K distinct objects chosen from the N
elements of a list."
  (let ((got (p26/combinations 2 '(a b c))))
    (should (= (length got) 3))
    (should (member '(a b) got))
    (should (member '(a c) got))
    (should (member '(b c) got)))

  (let ((got (p26/combinations 3 '(a b c d e f))))
    (should (= (length got) 20))))

;;; test.el ends here
