;; this line is required to use 'require function
(package-initialize)
;;
(add-to-list 'load-path "~/.emacs.d/lisp/")

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))

;;init ui
(require 'init-ui)

;;init package management
(require 'init-packages)

;;init customize defaults value
(require 'init-better-defaults)

;;
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Customize file will be loaded individually
(setq custom-file "~/.emacs.d/lisp/custom.el")
(load custom-file)

;;THESE CONFIG WILL APPEAR WHEN ENABLE THE CUSTOM OPTIONS(I GUESS)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 2)
 '(markdown-command
   "pandoc -f markdown -t html -s -mathjax -highlight-style pygments")
 '(org-agenda-files (quote ("~/Schedule/2016-08-16.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "color-97" :foreground "#f6f3e8")))))

