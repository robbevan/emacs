(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")

; custom place to save customizations
(setq custom-file "~/.emacs.d/robbevan/custom.el")
(load custom-file)

(load "robbevan/theme.el")

(provide 'init)