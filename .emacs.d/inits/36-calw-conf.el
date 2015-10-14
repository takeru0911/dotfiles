;;cfw:org-capture-templateはcalfw-orgを
;;requireする前に評価しておいてください。
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
            "個人" "~/my-schedule.org" "#268bd2")
           (cfw:org-create-file-source
            "研究室" "~/lab-schedule.org" "#859900")))))
    (switch-to-buffer (cfw:cp-get-buffer cp))))

(require 'org-gcal)
(setq 
 org-gcal-client-id "479760405490-pffk11bb3h0bsg5masvithub4rn0v6kp.apps.googleusercontent.com"
 org-gcal-client-secret "IU3939DVSubZ3lXoXsrZqncW"
 ;;カレンダーIDをキー、スケジュールを取りこむOrgファイルをvalueとするalist
 ;;複数登録可
 org-gcal-file-alist '(("takeru911run@gmail.com" .  "~/my-schedule.org")
                       ("onolab.kagoshima@gmail.com" .  "~/lab-schedule.org")
                       ))
;; calfw
(require 'calfw) ; 初回一度だけ
;;(cfw:open-calendar-buffer) ; カレンダー表示
(global-set-key "\C-c\C-l" 'cfw:open-calendar)