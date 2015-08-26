(defun indent-buffer ()
  "Indent the currently visited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer."
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indented selected region."))
      (progn
        (indent-buffer)
        (message "Indented buffer.")))))

(defun switch-theme-background-color-light ()
  "Toggle between light and dark background color modes."
  (interactive)
  (set-frame-parameter nil 'background-mode 'light)
  (enable-theme 'solarized)
  (set-frame-parameter nil 'background-mode 'light)
  (enable-theme 'solarized))

(defun switch-theme-background-color-dark ()
  "Toggle between light and dark background color modes."
  (interactive)
  (set-frame-parameter nil 'background-mode 'dark)
  (enable-theme 'solarized)
  (set-frame-parameter nil 'background-mode 'dark)
  (enable-theme 'solarized))

(defun open-basic-config ()
  "Open the my-basic-config.el file that contains general configuration."
  (interactive)
  (find-file "~/.emacs.d/my-basic-config.el"))

(defun open-packages-config ()
  "Open the my-packages.el file that configures the packages to be installed."
  (interactive)
  (find-file "~/.emacs.d/my-packages.el"))

(defun open-keybindings-config ()
  "Open the my-keybindings.el file that configures custom keybindings."
  (interactive)
  (find-file "~/.emacs.d/my-keybindings.el"))

(defun open-load-packages-config ()
  "Open the my-load-packages.el file that configures the packages."
  (interactive)
  (find-file "~/.emacs.d/my-load-packages.el"))

(defun open-my-custom-functions ()
  "Open the my-custom-functions.el that contains custom functions."
  (interactive)
  (find-file "~/.emacs.d/my-custom-functions.el"))

(defun activate-major-mode-leader ()
  "Set up `,' as a shortcut for `<SPC> m'."
  (setq mode-map (cdr (assoc major-mode evil-leader--mode-maps)))
  (when mode-map
    (setq major-mode-map (lookup-key mode-map (kbd "m")))
    (mapc (lambda (s)
            (eval `(define-key
                     ,(intern (format "evil-%S-state-local-map" s))
                     ,(kbd ",")
                     major-mode-map)))
          '(normal motion))
    (mapc (lambda (s)
            (eval `(define-key
                     ,(intern (format "evil-%S-state-local-map" s))
                     ,(kbd ",")
                     major-mode-map)))
          '(normal motion visual))))

;; select-window functions for window numbers 1 to 10
(dotimes (i 10)
  (eval `(defun ,(intern (format "select-window-%s" i)) (&optional arg)
           ,(format "Select the window with number %i." i)
           (interactive)
           (when (buffer-file-name) (save-buffer))
           (window-number-select ,i))))
