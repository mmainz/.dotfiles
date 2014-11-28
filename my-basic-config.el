;; don't show welcome screen
(setq inhibit-startup-message t)

;; remove scrollbars, menu bars and toolbars
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; remove the blinking cursor
(blink-cursor-mode -1)

;; put backup files into ~/.emacs-backup
(setq backup-directory-alist `(("." . "~/.emacs-backup")))

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)
(setq require-final-newline t)

(global-auto-revert-mode t)
(global-hl-line-mode +1)
