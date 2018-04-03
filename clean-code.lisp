(defpackage :clean-code
  (:use :cl :core))
(in-package :clean-code)

(defun say (text)
  (sb-ext:run-program "/usr/bin/say" (list "-v" "Victoria" text)))

(defun use-intention-revealing-names (variable-name)
  (say (concatenate 'string "Does the name " variable-name " tell you why it exists?"))
  (read)
  (say (concatenate 'string "Does the name " variable-name " tell you what it does?"))
  (read)
  (say (concatenate 'string "Does the name " variable-name " tell you how it is used?"))
  (read))

(defun avoid-disinformation (variable-name)
  (say "Does the name ~a have an entrenched meaning that differs from its intended meaning?" variable-name)
  (read)
  (say "Does the name ~a encode the implementation datastruct? It shouldn't" variable-name)
  (read)
  (say "Does the name ~a vary large ways from all other names?" variable-name)
  (read))

(defun clean-variable (variable-name)
  (use-intention-revealing-names variable-name)
  (avoid-disinformation variable-name))
