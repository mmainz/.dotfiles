(defhydra hydra-theme (:hint nil :exit t)
  "
Theme
-----
_d_: dark theme
_l_: light theme
"
  ("d" switch-theme-background-color-dark)
  ("l" switch-theme-background-color-light))

(defhydra hydra-dired (:hint nil :exit t)
  "
Dired
-----
_d_: select directory
_c_: current directory
_o_: current directory in other window
_f_: reveal in finder
"
  ("d" ido-dired)
  ("c" dired-jump)
  ("o" dired-jump-other-window)
  ("f" reveal-in-finder))

(defhydra hydra-iedit (:hint nil)
  "
iedit
-----
_e_: toggle iedit
_f_: restrict to function
_r_: restrict to region
_l_: restrict to line
"
  ("e" iedit-mode)
  ("f" iedit-restrict-function)
  ("r" iedit-restrict-region)
  ("l" iedit-restrict-current-line))

(defhydra hydra-highlight (:hint nil :exit t)
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
_s_: split
_S_: splice
_r_: raise
_j_: join
_l_: forward slurp
_L_: backward barf
_h_: backward slurp
_H_: forward barf
"
  ("s" sp-split-sexp)
  ("S" sp-splice-sexp)
  ("r" sp-raise-sexp)
  ("j" sp-join-sexp)
  ("l" sp-forward-slurp-sexp)
  ("L" sp-backward-barf-sexp)
  ("h" sp-backward-slurp-sexp)
  ("H" sp-forward-barf-sexp))

(defhydra hydra-ruby (:hint nil :exit t)
  "
Ruby
----
_b_: toggle block syntax
"
  ("b" ruby-toggle-block))

(defhydra hydra-elisp (:hint nil :exit t)
  "
elisp
-----
_b_: eval buffer
_r_: eval region
"
  ("b" eval-buffer)
  ("r" eval-region))

;; evil
(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-char-mode)

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
  "d" 'hydra-dired/body
  "c" 'comment-or-uncomment-region
  "h" 'windmove-left
  "j" 'windmove-down
  "k" 'windmove-up
  "l" 'windmove-right
  "p" 'hydra-smartparens/body
  "r" 'hydra-iedit/body
  "s" 'hydra-highlight/body
  "-" 'previous-buffer
  "." 'find-tag
  "t" 'hydra-theme/body)

(evil-leader/set-key-for-mode 'ruby-mode "e" 'hydra-ruby/body)
(evil-leader/set-key-for-mode 'emacs-lisp-mode "e" 'hydra-elisp/body)

;; helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
