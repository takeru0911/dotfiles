;; �~�j�o�b�t�@�������X�g�̍ő咷�Ft�Ȃ疳��
;;(setq history-length t)
;;;; session.el
;;;;   kill-ring��~�j�o�b�t�@�ŉߋ��ɊJ�����t�@�C���Ȃǂ̗�����ۑ�����
;;(when (require 'session nil t)
;;  (setq session-initialize '(de-saveplace session keys menus places)
;;        session-globals-include '((kill-ring 50)
;;                                  (session-file-alist 500 t)
;;                                  (file-name-history 10000)))
;;  (add-hook 'after-init-hook 'session-initialize)
;;  ;; �O������Ƃ��̈ʒu�ɃJ�[�\���𕜋A
;;  (setq session-undo-check -1))
;; minibuf-isearch
;;;;   minibuf��isearch���g����悤�ɂ���
;;(require 'minibuf-isearch nil t)