
;; cl -Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
		      ;; Auto Completion
		      company
		      ;; Better Editor
		      hungry-delete
		      ) "Default packages")

(setq package-selected-packages my/packages)


(defun my/packages-installed-p ()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database ... ")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; Find executable path on OSX
(when (memq window-system '(mac ns))
  (exec-path-frim-shell-initialize))

;;smex-auto-activate-config

(global-set-key [(meta x)] (lambda ()
			     (interactive)
			     (or (boundp 'smex-chache)
				 (smex-initialize))
			     (global-set-key [(meta x)] 'smex)
			     (smex)))
(global-set-key [(shift meta x)] (lambda ()
				   (interactive)
				   (or (boundp 'smex-cache)
				       (smex-initialize))
				   (global-set-key [(shift meta x)] 'smex-major-mode-commands)
				   (sEmex-major-mode-commands)))


;;CONFIG ABOUT EMMET_MODE KEYBIND AND HOOKS
;;(define-key emmet-mode-map (kbd "tab") 'emmet-expand-yas)

(provide 'init-packages)
