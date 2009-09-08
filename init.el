(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/vendor/textmate.el")

; custom place to save customizations
(setq custom-file "~/.emacs.d/robbevan/custom.el")
(load custom-file)

; colour theme
(load "robbevan/theme.el")

; defunkt's TextMate Minor Mode
(require 'textmate)
(textmate-mode)

(provide 'init)