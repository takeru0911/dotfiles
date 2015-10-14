;;; load-path
(setq load-path (cons "~/.emacs.d/elisp" load-path))
(setq load-path (cons "~/.emacs.d/auto-java-complete" load-path))

;;helm-agpp
(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(setq-default c-basic-offset 2)
;;init loader
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
(setq init-loader-show-log-after-init t)
