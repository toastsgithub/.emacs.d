

;; SHOW LINE-NUM
(global-linum-mode 1)

;; CHANGE THE STYLE OF CURSOR
(setq-default cursor-type 'bar)

;; HIDE HELP-PAGE WHEN START UP
(setq inhibit-splash-screen 1)

;; CLOSE INDENT
;;(electric-indent-mode -1)

;; CHANGE FONT-SIZE
(set-face-attribute 'default nil :height 160)

;; FORBID EMACS TO PRODUCE BACKUP FILE
(setq make-backup-files nil)

;; DELETE THE SELECTED CHARS
(delete-selection-mode 1)

;; HIGHLIGHT CURRENT LINE
(global-hl-line-mode 1)

;; ENABLE HUNGRY DETELE WHEN STARTUP
(global-hungry-delete-mode 1)

;;auto complete
(global-company-mode 1)

;;show paren pair
(show-paren-mode 1)

;;ido-mode enable auto-complete in file-find
(ido-mode 1)

;;
;;(exec-path-from-shell-initialize)

;;auto pair paren
(electric-pair-mode 1)
(provide 'init-better-defaults)