;; Copyright (C) 2015, 2018  Erik Edrosa <erik.edrosa@gmail.com>
;;
;; This file is part of guile-commonmark
;;
;; guile-commonmark is free software: you can redistribute it and/or
;; modify it under the terms of the GNU Lesser General Public License
;; as published by the Free Software Foundation, either version 3 of
;; the License, or (at your option) any later version.
;;
;; guile-commonmark is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU Lesser General Public License for more details.
;;
;; You should have received a copy of the GNU Lesser General Public License
;; along with guile-commonmark.  If not, see <http://www.gnu.org/licenses/>.

(define-module (test-node)
  #:use-module (srfi srfi-64)
  #:use-module (commonmark node))

(test-begin "node")

(define test-node (make-node 'test))

(test-assert "no-children, true when no children"
             (no-children? test-node))

(test-assert "no-children, false when children"
             (not (no-children? (add-child-node test-node test-node))))

(test-end)
