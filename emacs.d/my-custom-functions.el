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
