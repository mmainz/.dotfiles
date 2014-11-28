;; helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)

;; evil-leader
(evil-leader/set-leader "m")
(evil-leader/set-key
  "f" 'helm-projectile-find-file
  "o" 'other-window
  "3" 'split-window-right
  "1" 'delete-other-windows
  "i" 'indent-region-or-buffer)
