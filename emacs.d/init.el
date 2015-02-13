(load "~/.emacs.d/my-packages.el")
(load "~/.emacs.d/my-custom-functions.el")
(load "~/.emacs.d/rcodetools.el")
(load "~/.emacs.d/auto-save.el")

(add-hook 'after-init-hook
	  '(lambda ()
	     (load "~/.emacs.d/my-load-packages.el")
	     (load "~/.emacs.d/my-basic-config.el")
             (load "~/.emacs.d/my-keybindings.el")))
