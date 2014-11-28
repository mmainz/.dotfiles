;; don't show welcome screen
(setq inhibit-startup-message t)

;; remove scrollbars, menu bars and toolbars
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; remove the blinking cursor
(blink-cursor-mode -1)

;; put backup files into ~/.emacs-backup
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; whitespace settings
(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)
(setq require-final-newline t)
(setq js-indent-level 2)

;; reload files that were changed externally
(global-auto-revert-mode t)

;; highlight current line
(global-hl-line-mode +1)

;; OS X specific settings
(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil)
  (global-set-key [kp-delete] 'delete-char))

;; auto-pair parenthesis etc.
(electric-pair-mode 1)

;; don't insert encoding comment in first line
(setq ruby-insert-encoding-magic-comment nil)

;; remove trailing whitespace before saving a file
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; start server for remote calling with emacsclient
(server-start)
