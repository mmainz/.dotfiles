(defhydra hydra-highlight (:hint nil)
  "
highlight-symbol
----------------
_s_: highlight at point
_d_: disable highlights
_n_: next occurrence
_p_: previous occurrence
_r_: replace symbol
"
  ("s" highlight-symbol-at-point)
  ("d" highlight-symbol-remove-all)
  ("n" highlight-symbol-next)
  ("p" highlight-symbol-prev)
  ("r" highlight-symbol-query-replace))

(defhydra hydra-smartparens (:hint nil)
  "
smartparens
-----------
_s_: split/splice
_r_: raise
_j_: join
_l_: forward slurp/backward barf
_h_: backward slurp/forward barf
"
  ("s" sp-split-sexp)
  ("S" sp-splice-sexp)
  ("r" sp-raise-sexp)
  ("j" sp-join-sexp)
  ("l" sp-forward-slurp-sexp)
  ("L" sp-backward-barf-sexp)
  ("h" sp-backward-slurp-sexp)
  ("H" sp-forward-barf-sexp))

;; evil
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "a" 'projectile-ag
  "b" 'helm-mini
  "c" 'comment-or-uncomment-region
  "dc" 'dired-jump
  "dd" 'ido-dired
  "do" 'dired-jump-other-window
  "g" 'magit-status
  "H" 'hydra-highlight/body
  "i" 'indent-region-or-buffer
  "j" 'avy-goto-char
  "L" 'hydra-smartparens/body
  "pf" 'helm-projectile-find-file
  "pp" 'helm-projectile-switch-project
  "r" 'iedit-mode
  "s" 'save-buffer
  "wa" 'ace-window
  "wc" 'delete-window
  "wC" 'delete-other-windows
  "wv" 'split-window-right
  "w-" 'split-window-below
  "x" 'helm-M-x
  ";p" 'open-packages-config
  ";k" 'open-keybindings-config
  ";l" 'open-load-packages-config
  ";f" 'open-my-custom-functions
  "-" 'previous-buffer
  "+" 'next-buffer)

(evil-leader/set-key-for-mode
  'ruby-mode
  "mb" 'ruby-toggle-block)

(evil-leader/set-key-for-mode
  'emacs-lisp-mode
  "mb" 'eval-buffer
  "mr" 'eval-region)

(evil-leader/set-key-for-mode
  'clojure-mode
  "mb" 'cider-load-buffer
  "md" 'cider-apropos-documentation
  "mj" 'cider-jack-in
  "mm" 'cider-macroexpand-1)

;; helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
