(require 'undo-tree)
(global-undo-tree-mode t)
(global-set-key (kbd "C-x C-\\") 'undo-tree-redo)
(global-anzu-mode +1)
(volatile-highlights-mode t)
