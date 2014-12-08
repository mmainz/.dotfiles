;; evil-leader
(evil-leader/set-leader "m")
(evil-leader/set-key
  "f" 'helm-projectile-find-file
  "o" 'other-window
  "3" 'split-window-right
  "1" 'delete-other-windows
  "i" 'indent-region-or-buffer
  "b" 'helm-mini
  "d" 'ido-dired
  "c" 'comment-or-uncomment-region
  "e" 'iedit-mode
  "m" 'iedit-restrict-function
  "l" 'iedit-restrict-current-line)

;; helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)

;; smartparens
(global-set-key (kbd "M-s") 'sp-split-sexp)
(global-set-key (kbd "M-S") 'sp-splice-sexp)
(global-set-key (kbd "M-r") 'sp-raise-sexp)
(global-set-key (kbd "M-j") 'sp-join-sexp)
(global-set-key (kbd "C-)") 'sp-forward-slurp-sexp)
(global-set-key (kbd "C-(") 'sp-backward-slurp-sexp)
(global-set-key (kbd "M-)") 'sp-forward-barf-sexp)
(global-set-key (kbd "M-(") 'sp-backward-barf-sexp)
