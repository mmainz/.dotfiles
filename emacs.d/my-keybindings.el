;; evil-leader
(evil-leader/set-leader "m")
(evil-leader/set-key
  "x" 'helm-M-x
  "f" 'helm-projectile-find-file
  "0" 'delete-window
  "1" 'delete-other-windows
  "2" 'split-window-below
  "3" 'split-window-right
  "5" 'make-frame-command
  "i" 'indent-region-or-buffer
  "b" 'helm-mini
  "d" 'ido-dired
  "c" 'comment-or-uncomment-region
  "h" 'windmove-left
  "j" 'windmove-down
  "k" 'windmove-up
  "l" 'windmove-right
  "e" 'iedit-mode
  "m" 'iedit-restrict-function
  "n" 'iedit-restrict-current-line
  "<SPC>" 'ace-jump-char-mode)

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
