(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")

; custom place to save customizations
(setq custom-file "~/.emacs.d/robbevan/custom.el")
(load custom-file)

; colour theme
(load "robbevan/theme.el")

; defunkt's TextMate Minor Mode
(add-to-list 'load-path "~/.emacs.d/vendor/textmate.el")
(require 'textmate)
(textmate-mode)

; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)

; Rinari
(add-to-list 'load-path "~/.emacs.d/vendor/rinari")
(require 'rinari)

; cheat.el
(add-to-list 'load-path "~/.emacs.d/vendor/cheat.el")
(require 'cheat)

; yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1b")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1b/snippets")

; RSpec mode
(add-to-list 'load-path "~/.emacs.d/vendor/rspec-mode")
(require 'mode-compile)
(require 'el-expectations)
(require 'rspec-mode)

; omnifocus.el
(add-to-list 'load-path "~/.emacs.d/vendor/omnifocus.el")
(autoload 'send-region-to-omnifocus-quickentry "omnifocus" nil t)
(global-set-key "\C-c\C-o" 'send-region-to-omnifocus-quickentry)

; org-mode
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-agenda-files (list "~/org/inbox.org"
                             "~/org/personal.org"
                             "~/org/work.org"))
(setq org-log-done t)
(setq org-mobile-directory "/Volumes/robbevan/org")
(setq org-mobile-inbox-for-pull "~/org/inbox.org")



(provide 'init)