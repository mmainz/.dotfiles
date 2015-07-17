(load "~/.emacs.d/my-packages.el")
(load "~/.emacs.d/my-custom-functions.el")
(load "~/.emacs.d/auto-save.el")

(add-hook 'after-init-hook
	  '(lambda ()
	     (load "~/.emacs.d/my-load-packages.el")
	     (load "~/.emacs.d/my-basic-config.el")
             (load "~/.emacs.d/my-keybindings.el")))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(sml/folder ((t (:inherit sml/global :background "grey22" :foreground "WhiteSmoke" :weight normal))))
 '(sml/modes ((t (:inherit sml/global :background "grey40" :foreground "WhiteSmoke"))))
 '(sml/position-percentage ((t (:inherit sml/prefix :background "grey40" :foreground "WhiteSmoke" :weight normal)))))
