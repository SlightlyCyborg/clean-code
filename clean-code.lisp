(defpackage :clean-code
  (:use :cl :core))
(in-package :clean-code)

(defun say (text)
  (sb-ext:run-program "/usr/bin/say" (list "-v" "Victoria" text)))

(defun is-an-intention-revealing-name? (intention-revealing-name-candidate)
  (say (concatenate 'string "Does the name " intention-revealing-name-candidate " tell you why it exists?"))
  (read)
  (say (concatenate 'string "Does the name " intention-revealing-name-candidate " tell you what it does?"))
  (read)
  (say (concatenate 'string "Does the name " intention-revealing-name-candidate " tell you how it is used?"))
  (read))

(defun name-has-disinformation? (name-with-possible-disinformation-in-it)
  (say (concatenate 'string "Does the name " name-with-possible-disinformation-in-it " have an entrenched meaning that differs from its intended meaning?"))
  (read)
  (say (concatenate 'string "Does the name " name-with-possible-disinformation-in-it " encode the implementation datastruct? It shouldn't"))
  (read)
  (say  (concatenate 'string "Does the name " name-with-possible-disinformation-in-it " vary large ways from all other names?"))
  (read))

(defun should-i-use-this-variable-name? (variable-name-I-am-refactoring)
  (use-intention-revealing-names variable-name-I-am-refactoring)
  (avoid-disinformation variable-name-I-am-refactoring))
