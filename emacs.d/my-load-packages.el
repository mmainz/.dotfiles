(require 'use-package)

(use-package darcula-theme
  :config
  (set-frame-font "Inconsolata-14")
  (add-to-list 'default-frame-alist '(font . "Inconsolata-14")))

(use-package zoom-frm)

(use-package ocodo-svg-modelines
  :config
  (ocodo-svg-modelines-init)
  (smt/set-theme 'ocodo-mesh-aqua-smt))

(use-package flx-ido
  :config
  (ido-mode 1)
  (ido-everywhere 1)
  (flx-ido-mode 1)
  (setq ido-enable-flex-matching t)
  (setq ido-use-faces nil))

(use-package helm-flx
  :config
  (helm-flx-mode +1))

(use-package helm
  :config
  (use-package helm-config
    :config
    (setq helm-split-window-in-side-p t
          helm-ff-file-name-history-use-recentf t
          helm-display-header-line nil)
    (set-face-background 'helm-selection "#661100")
    (set-face-foreground 'helm-selection "#bbbbbb")
    (set-face-background 'helm-source-header "#333333")
    (set-face-foreground 'helm-source-header "#eeeeee")
    (helm-mode 1)))

(use-package helm-ls-git)

(use-package company
  :config
  (global-company-mode)
  (setq company-idle-delay 0)
  (setq company-dabbrev-downcase nil))

(use-package projectile
  :config
  (setq projectile-require-project-root nil)
  (setq projectile-globally-ignored-directories
        (append projectile-globally-ignored-directories '("node_modules"
                                                          "bower_components")))
  (projectile-global-mode))

(use-package helm-projectile
  :config
  (helm-projectile-on))

(use-package smartparens-config
  :config
  (show-smartparens-global-mode))

(use-package ruby-end
  :config
  (setq ruby-end-insert-newline nil))

(use-package evil
  :config
  (evil-mode 1)
  (add-hook 'after-change-major-mode-hook
            (function (lambda ()
                        (setq evil-shift-width 2))))
  (use-package evil-leader
    :config
    (global-evil-leader-mode)
    (add-hook 'after-change-major-mode-hook 'activate-major-mode-leader))
  (use-package evil-surround
    :config
    (global-evil-surround-mode 1))
  (use-package evil-matchit
    :config
    (global-evil-matchit-mode 1)))

(use-package avy
  :config
  (setq aw-dispatch-always t))

(use-package popwin
  :config
  (push "*rspec-compilation*" popwin:special-display-config)
  (push "*cider-test-report*" popwin:special-display-config)
  (popwin-mode 1))

(use-package guide-key
  :config
  (setq guide-key/guide-key-sequence '("<SPC>" ","))
  (setq guide-key/recursive-key-sequence-flag t)
  (setq guide-key/popup-window-position 'bottom)
  (guide-key-mode 1))

(use-package org
  :config
  (setq org-ellipsis "⤵"))

(use-package rainbow-mode
  :config
  (defun activate-rainbow-mode () (rainbow-mode 1))
  (add-hook 'emacs-lisp-mode-hook 'activate-rainbow-mode)
  (add-hook 'clojure-mode-hook 'activate-rainbow-mode)
  (add-hook 'elixir-mode-hook 'activate-rainbow-mode)
  (add-hook 'ruby-mode-hook 'activate-rainbow-mode))

(use-package clojure-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.boot\\'" . clojure-mode))
  (add-hook 'clojurescript-mode-hook
            (lambda ()
              (setq compilation-read-command nil))))

(use-package clj-refactor
  :config
  (defun clj-refactor-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1))

  (add-hook 'clojure-mode-hook #'clj-refactor-clojure-mode-hook))

(use-package web-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.sass\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.js$" . web-mode))
  (setq web-mode-content-types-alist
        '(("jsx"  . ".*\\.js[x]?\\'")))
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-enable-auto-quoting nil)
  (defadvice web-mode-highlight-part (around tweak-jsx activate)
    (if (equal web-mode-content-type "jsx")
        (let ((web-mode-enable-part-face nil))
          ad-do-it)
      ad-do-it)))

(use-package coffee-mode
  :config
  (custom-set-variables '(coffee-tab-width 2)))

(use-package slim-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.emblem\\'" . slim-mode)))

(use-package yaml-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode)))

(use-package markdown-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
  (add-hook 'markdown-mode-hook
            (lambda ()
              (visual-line-mode))))

(use-package alchemist)

(use-package undo-tree
  :config
  (global-undo-tree-mode))

(use-package cider
  :config
  (setq cider-show-error-buffer nil))

(use-package flycheck
  :config
  (global-flycheck-mode))

(use-package eshell-prompt-extras
  :config
  (with-eval-after-load "esh-opt"
    (autoload 'epe-theme-lambda "eshell-prompt-extras")
    (setq eshell-highlight-prompt nil
          eshell-prompt-function 'epe-theme-lambda)))

(use-package exec-path-from-shell
  :config
  (exec-path-from-shell-initialize))

;; external packages

(use-package window-number
  :config
  (window-number-mode))
