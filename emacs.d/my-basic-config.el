;; don't show welcome screen
(setq inhibit-startup-message t)

;; maximize window on start
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Setting rbenv path
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:"
                       (getenv "HOME") "/.rbenv/bin:"
                       (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims")
                      (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

;; remove scrollbars, menu bars and toolbars
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; treat underscore as a word character to get more vim-like movement behavior
(modify-syntax-entry ?_ "w")
(add-hook 'ruby-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))

;; remove the blinking cursor
(blink-cursor-mode -1)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)

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
(setq css-indent-offset 4)
(setq sass-indent-offset 4)

;; reload files that were changed externally
(global-auto-revert-mode t)

;; highlight current line
(global-hl-line-mode +1)

;; OS X specific settings
(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil)
  (global-set-key [kp-delete] 'delete-char))

;; don't insert encoding comment in first line
(setq ruby-insert-encoding-magic-comment nil)

;; remove trailing whitespace before saving a file
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; auto-pair parenthesis
(electric-pair-mode)

;; set garbage collection threshold
(setq gc-cons-threshold 100000000)

;; start server for remote calling with emacsclient
(server-start)
