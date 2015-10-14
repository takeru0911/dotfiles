;;cfw:org-capture-template��calfw-org��
;;require����O�ɕ]�����Ă����Ă��������B
(setq cfw:org-capture-template
      '("c" "calfw2org" entry 
        (file "~/my-schedule.org")
        "*  %?\n %(cfw:org-capture-day)"))

(require 'calfw-org)

(defun cfw:open-calendar ()
  (interactive)
  (let ((cp
         (cfw:create-calendar-component-buffer
          :view 'month
          :contents-sources
          (list 
           (cfw:org-create-file-source
            "�l" "~/my-schedule.org" "#268bd2")
           (cfw:org-create-file-source
            "������" "~/lab-schedule.org" "#859900")))))
    (switch-to-buffer (cfw:cp-get-buffer cp))))

(require 'org-gcal)
(setq 
 org-gcal-client-id "479760405490-pffk11bb3h0bsg5masvithub4rn0v6kp.apps.googleusercontent.com"
 org-gcal-client-secret "IU3939DVSubZ3lXoXsrZqncW"
 ;;�J�����_�[ID���L�[�A�X�P�W���[������肱��Org�t�@�C����value�Ƃ���alist
 ;;�����o�^��
 org-gcal-file-alist '(("takeru911run@gmail.com" .  "~/my-schedule.org")
                       ("onolab.kagoshima@gmail.com" .  "~/lab-schedule.org")
                       ))
;; calfw
(require 'calfw) ; �����x����
;;(cfw:open-calendar-buffer) ; �J�����_�[�\��
(global-set-key "\C-c\C-l" 'cfw:open-calendar)