(require 'auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)
(ahs-set-idle-interval 0.5)

;;(require 'rainbow-blocks)
;;(global-rainbow-blocks-mode t)
(menu-bar-mode 1)
(tool-bar-mode 0)

(require 'color-theme)
(color-theme-initialize)
(color-theme-clarity)
(load-theme 'farmhouse-dark t)
(require 'whitespace)
(setq whitespace-style '(face           ; face‚Å‰ÂŽ‹‰»
                         tabs           ; ƒ^ƒu
                         tab-mark
                         ))
(setq whitespace-display-mappings
      '((tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))

(global-whitespace-mode 1)

;;rainbow-delimitters
(require 'rainbow-delimiters)
(rainbow-delimiters-mode t)

;;indent-guide
(setq indent-guide-delay 0.1)
(setq indent-guide-recursive t)
(add-hook 'prog-mode-hook 'indent-guide-mode)