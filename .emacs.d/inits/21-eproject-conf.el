;;eproject
(require 'eproject)
(defun ep-dirtree ()
  (interactive)
  (dirtree eproject-root t))