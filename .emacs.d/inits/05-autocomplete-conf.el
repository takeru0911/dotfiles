;;yasnippet
(require 'yasnippet)
;;auto-complete
(global-auto-complete-mode t)
(add-hook 'auto-complete-mode-hook
          (lambda ()
            (define-key ac-completing-map (kbd "C-n") 'ac-next)
            (define-key ac-completing-map (kbd "C-p") 'ac-previous)))
