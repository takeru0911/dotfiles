(require 'google-translate)

;; �L�[�o�C���h�̐ݒ�i���D�݂Łj
(global-set-key [(C x) (C t)] 'google-translate-at-point)

;; �|��̃f�t�H���g�l��ݒ�ien -> ja�j
;; popwin.el
(require 'popwin)
;; ���܂��Ȃ��i�悭�������ĂȂ��A�A�j
(setq display-buffer-function 'popwin:display-buffer)
;; �|�b�v�A�b�v����ʉ��ɕ\��
(setq popwin:popup-window-position 'bottom)

;; google-translate.el�̖|��o�b�t�@���|�b�v�A�b�v�ŕ\��������
(push '("*Google Translate*") popwin:special-display-config)