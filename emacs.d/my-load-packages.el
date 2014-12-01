(load-theme 'zenburn t)

(require 'darcula-theme)
(set-frame-font "Inconsolata-12")
(set-face-attribute 'mode-line-buffer-id nil :background "black")

(require 'magit)

(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(require 'helm-config)
(setq helm-split-window-in-side-p t
      helm-buffers-fuzzy-matching t
      helm-ff-file-name-history-use-recentf t)
(helm-mode 1)

(require 'company)
(global-company-mode)
(setq company-idle-delay 0)

(require 'projectile)
(setq projectile-require-project-root nil)
(projectile-global-mode)

(require 'helm-projectile)
(helm-projectile-on)

(require 'smartparens-config)
(show-smartparens-global-mode)

(require 'ruby-end)
(setq ruby-end-insert-newline nil)

(require 'evil-leader)
(global-evil-leader-mode)

(require 'evil)
(evil-mode 1)

(require 'evil-surround)
(global-evil-surround-mode 1)

(require 'evil-matchit)
(global-evil-matchit-mode 1)

(require 'evil-visualstar)

(require 'clojure-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-enable-auto-quoting nil)

(require 'coffee-mode)
(custom-set-variables '(coffee-tab-width 2))

(require 'slim-mode)
(add-to-list 'auto-mode-alist '("\\.emblem\\'" . slim-mode))

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(require 'cider)
(setq cider-show-error-buffer nil)
