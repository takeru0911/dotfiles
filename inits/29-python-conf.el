(add-to-list 'auto-mode-alist '("\\.py$" . python-mode))
 
;;pytho jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)