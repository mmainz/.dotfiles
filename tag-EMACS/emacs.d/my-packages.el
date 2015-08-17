(require 'package)
(require 'cl)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(defvar required-packages '(darcula-theme
                            paradox
                            ocodo-svg-modelines
                            magit
                            flx-ido
                            helm
                            company
                            ag
                            projectile
                            helm-projectile
                            smartparens
                            ruby-end
                            iedit
                            hydra
                            evil-leader
                            evil
                            evil-surround
                            evil-matchit
                            evil-visualstar
                            avy
                            ace-window
                            guide-key
                            highlight-symbol
                            fill-column-indicator
                            clojure-mode
                            web-mode
                            coffee-mode
                            slim-mode
                            yaml-mode
                            markdown-mode
                            haml-mode
                            go-mode
                            elixir-mode
                            undo-tree
                            cider
                            inf-ruby
                            rspec-mode
                            flycheck
                            restclient
                            exec-path-from-shell))

(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (message "%s" "done!")
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))
