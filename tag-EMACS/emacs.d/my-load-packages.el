(setq frame-background-mode 'light)
(load-theme 'solarized t)
(set-frame-font "Inconsolata-14")
(add-to-list 'default-frame-alist '(font . "Inconsolata-14"))
(enable-theme 'solarized)

;; (require 'smart-mode-line)
(setq powerline-arrow-shape 'arrow)
(setq sml/theme 'powerline)
(sml/setup)

;; (require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(require 'helm)
(require 'helm-config)
(setq helm-split-window-in-side-p t
      helm-ff-file-name-history-use-recentf t
      helm-display-header-line nil)
(set-face-background 'helm-selection "#661100")
(set-face-foreground 'helm-selection "#bbbbbb")
(set-face-attribute 'helm-source-header nil :height 0.1)
(helm-mode 1)

;; (require 'company)
(global-company-mode)
(setq company-idle-delay 0)

(require 'projectile)
(setq projectile-require-project-root nil)
(setq projectile-globally-ignored-directories
      (append projectile-globally-ignored-directories '("node_modules"
                                                        "bower_components")))
(setq projectile-enable-caching t)
(projectile-global-mode)

;; (require 'helm-projectile)
(helm-projectile-on)

;; (require 'smartparens-config)
(show-smartparens-global-mode)

;; (require 'ruby-end)
(setq ruby-end-insert-newline nil)

;; (require 'evil-leader)
(global-evil-leader-mode)

;; (require 'evil)
(evil-mode 1)
(add-hook 'after-change-major-mode-hook
          (function (lambda ()
                      (setq evil-shift-width 2))))

;; (require 'evil-surround)
(global-evil-surround-mode 1)

;; (require 'evil-matchit)
(global-evil-matchit-mode 1)

;; (require 'clojure-mode)
(add-to-list 'auto-mode-alist '("\\.boot\\'" . clojure-mode))

;; (require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.sass\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-enable-auto-quoting nil)
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

;; (require 'coffee-mode)
(custom-set-variables '(coffee-tab-width 2))

;; (require 'slim-mode)
(add-to-list 'auto-mode-alist '("\\.emblem\\'" . slim-mode))

;; (require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; (require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-hook 'markdown-mode-hook
          (lambda ()
            (visual-line-mode)))

;; (require 'undo-tree)
(global-undo-tree-mode)

;; (require 'cider)
(setq cider-show-error-buffer nil)

;; (require 'flycheck)
(global-flycheck-mode)

;; (require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))