(load-theme 'zenburn t)

(require 'darcula-theme)
(set-frame-font "Inconsolata-12")
(set-face-attribute 'mode-line-buffer-id nil :background "black")

(require 'magit)

(require 'helm-config)
(setq helm-split-window-in-side-p t
      helm-buffers-fuzzy-matching t
      helm-ff-file-name-history-use-recentf t)
(helm-mode 1)

(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(require 'projectile)
(setq projectile-require-project-root nil)
(projectile-global-mode)

(require 'helm-projectile)
(helm-projectile-on)

(require 'ruby-end)
(setq ruby-end-insert-newline nil)
(ruby-end-mode 1)

(require 'evil-leader)
(global-evil-leader-mode)

(require 'evil)
(evil-mode 1)

(require 'evil-surround)
(global-evil-surround-mode 1)

(require 'evil-matchit)
(global-evil-matchit-mode 1)

(require 'evil-visualstar)
