(require 'helm-config)
(require 'quickrun)
(global-set-key (kbd "C-x C-r") 'quickrun)
(helm-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(google-translate-default-source-language "en")
 '(google-translate-default-target-language "ja")
 '(helm-ff-auto-update-initial-value nil)
 '(inhibit-startup-screen t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(define-key helm-read-file-map (kbd "C-h") 'delete-backward-char)
(define-key helm-read-file-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key global-map (kbd "C-x C-h") 'helm-recentf)
(define-key global-map (kbd "C-x C-m") 'helm-imenu-anywhere)
(define-key global-map (kbd "M-h") 'helm-complex-command-history)
(global-ace-isearch-mode 1)
;(require 'helm-migemo)
;;;;; ‚±‚ÌC³‚ª•K—v
;(with-eval-after-load "helm-migemo"
; (defun helm-compile-source--candidates-in-buffer (source)
;    (helm-aif (assoc 'candidates-in-buffer source)
;        (append source
;                `((candidates
;                   . ,(or (cdr it)
;                          (lambda ()
;                            ;; Do not use `source' because other plugins
;                            ;; (such as helm-migemo) may change it
;                            (helm-candidates-in-buffer (helm-get-current-source)))))
;                  (volatile) (match identity)))
;      source))
;  ;; [2015-09-06 Sun]helm-match-plugin -> helm-multi-match•ÏX‚Ìø‚è‚ğó‚¯‚Ä
;  (defalias 'helm-mp-3-get-patterns 'helm-mm-3-get-patterns)
;  (defalias 'helm-mp-3-search-base 'helm-mm-3-search-base))