(require 'google-translate)

;; キーバインドの設定（お好みで）
(global-set-key [(C x) (C t)] 'google-translate-at-point)

;; 翻訳のデフォルト値を設定（en -> ja）
;; popwin.el
(require 'popwin)
;; おまじない（よく分かってない、、）
(setq display-buffer-function 'popwin:display-buffer)
;; ポップアップを画面下に表示
(setq popwin:popup-window-position 'bottom)

;; google-translate.elの翻訳バッファをポップアップで表示させる
(push '("*Google Translate*") popwin:special-display-config)