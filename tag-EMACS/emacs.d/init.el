(load "~/.emacs.d/my-packages.el")
(load "~/.emacs.d/my-custom-functions.el")
(load "~/.emacs.d/auto-save.el")

(add-hook 'after-init-hook
	  '(lambda ()
	     (load "~/.emacs.d/my-load-packages.el")
	     (load "~/.emacs.d/my-basic-config.el")
             (load "~/.emacs.d/my-keybindings.el")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" "f0b0710b7e1260ead8f7808b3ee13c3bb38d45564e369cbe15fc6d312f0cd7a0" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(sml/folder ((t (:inherit sml/global :background "grey22" :foreground "WhiteSmoke" :weight normal))))
 '(sml/modes ((t (:inherit sml/global :background "grey40" :foreground "WhiteSmoke"))))
 '(sml/position-percentage ((t (:inherit sml/prefix :background "grey40" :foreground "WhiteSmoke" :weight normal)))))
