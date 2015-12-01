(require 'package)
(require 'cl)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(defvar required-packages '(use-package
                            darcula-theme
                            facemenu+
                            zoom-frm
                            eyedropper
                            paradox
                            ocodo-svg-modelines
                            editorconfig
                            magit
                            git-timemachine
                            flx-ido
                            helm-flx
                            helm
                            helm-ls-git
                            wgrep-ag
                            company
                            ag
                            projectile
                            helm-projectile
                            smartparens
                            ruby-end
                            iedit
                            hydra
                            evil
                            evil-leader
                            evil-surround
                            evil-matchit
                            evil-visualstar
                            evil-magit
                            avy
                            ace-window
                            popwin
                            guide-key
                            highlight-symbol
                            rainbow-mode
                            clojure-mode
                            clj-refactor
                            web-mode
                            coffee-mode
                            slim-mode
                            yaml-mode
                            markdown-mode
                            haml-mode
                            go-mode
                            elixir-mode
                            alchemist
                            f
                            s
                            let-alist
                            elm-mode
                            undo-tree
                            cider
                            inf-ruby
                            rspec-mode
                            flycheck
                            restclient
                            eshell-prompt-extras
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
