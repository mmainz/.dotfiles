(require 'package)
(require 'cl)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(defvar required-packages '(zenburn-theme
                            darcula-theme
                            magit
                            flx-ido
                            helm
                            company
                            projectile
                            helm-projectile
                            smartparens
                            ruby-end
                            evil-leader
                            evil
                            evil-surround
                            evil-matchit
                            evil-visualstar
                            clojure-mode
                            web-mode
                            coffee-mode
                            slim-mode
                            yaml-mode
                            markdown-mode
                            cider))

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
