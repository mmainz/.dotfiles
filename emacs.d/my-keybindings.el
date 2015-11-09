(global-set-key [M-down-mouse-1] 'facemenup-customize-face-at-mouse)

(defhydra hydra-timemachine (:hint nil)
  "
git time machine
----------------
_t_: toggle timemachine
_p_: previous revision
_n_: next revision
_g_: goto revision
_q_: quit timemachine
"
  ("t" git-timemachine)
  ("p" git-timemachine-show-previous-revision)
  ("n" git-timemachine-show-next-revision)
  ("g" git-timemachine-show-nth-revision)
  ("q" git-timemachine-quit))

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
(define-key evil-motion-state-map "\t" nil)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "1" 'select-window-1
  "2" 'select-window-2
  "3" 'select-window-3
  "4" 'select-window-4
  "5" 'select-window-5
  "6" 'select-window-6
  "7" 'select-window-7
  "8" 'select-window-8
  "9" 'select-window-9
  "0" 'select-window-0
  "a" 'projectile-ag
  "bb" 'helm-mini
  "bc" 'kill-other-buffers
  "bk" 'kill-this-buffer
  "bl" 'list-buffers
  "c" 'comment-or-uncomment-region
  "dc" 'dired-jump
  "dd" 'ido-dired
  "do" 'dired-jump-other-window
  "F" 'zoom-in/out
  "gs" 'magit-status
  "gt" 'hydra-timemachine/body
  "H" 'hydra-highlight/body
  "i" 'indent-region-or-buffer
  "j" 'avy-goto-char
  "k" 'hydra-smartparens/body
  "pf" 'helm-browse-project
  "pp" 'helm-projectile-switch-project
  "r" 'iedit-mode
  "s" 'save-buffer
  "tn" 'linum-mode
  "wa" 'ace-window
  "wc" 'delete-window
  "wC" 'delete-other-windows
  "wpb" 'popwin:popup-buffer
  "wpc" 'popwin:close-popup-window
  "wpt" 'popwin:popup-buffer-tail
  "wps" 'popwin:stick-popup-window
  "wv" 'split-window-right
  "w-" 'split-window-below
  "x" 'helm-M-x
  ";c" 'open-basic-config
  ";f" 'open-my-custom-functions
  ";k" 'open-keybindings-config
  ";l" 'open-load-packages-config
  ";p" 'open-packages-config
  "-" 'previous-buffer
  "+" 'next-buffer)

(evil-leader/set-key-for-mode
  'ruby-mode
  "mb" 'ruby-toggle-block
  "mrf" 'rspec-verify
  "mra" 'rspec-verify-all)

(evil-leader/set-key-for-mode
  'emacs-lisp-mode
  "mb" 'eval-buffer
  "mr" 'eval-region)

(evil-leader/set-key-for-mode
  'clojure-mode
  "mb" 'cider-load-buffer
  "md" 'cider-apropos-documentation
  "mf" 'cider-load-file
  "mj" 'cider-jack-in
  "ml" 'cider-eval-last-sexp
  "mm" 'cider-macroexpand-1
  "mn" 'cider-repl-set-ns
  "mN" 'hydra-cljr-ns-menu/body
  "mp" 'cider-pprint-eval-last-sexp
  "mP" 'hydra-cljr-project-menu/body
  "mr" 'cider-refresh
  "mR" 'hydra-cljr-code-menu/body
  "mtp" 'cider-test-run-test
  "mta" 'cider-test-run-tests
  "mtr" 'cider-test-rerun-tests)

(evil-leader/set-key-for-mode
  'clojurescript-mode
  "mb" 'cider-load-buffer
  "md" 'cider-apropos-documentation
  "mf" 'cider-load-file
  "mj" 'cider-jack-in-clojurescript
  "ml" 'cider-eval-last-sexp
  "mm" 'cider-macroexpand-1
  "mn" 'cider-repl-set-ns
  "mp" 'cider-pprint-eval-last-sexp
  "mr" 'cider-refresh
  "mtd" 'test-doo
  "mtw" 'test-doo-watch)

(evil-leader/set-key-for-mode
  'elixir-mode
  "meb" 'alchemist-eval-print-buffer
  "mer" 'alchemist-eval-print-region
  "mta" 'alchemist-mix-test
  "mtb" 'alchemist-mix-test-this-buffer
  "mtr" 'alchemist-mix-rerun-last-test
  "mtt" 'alchemist-mix-test-at-point)

;; helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)

;; iedit
(global-set-key (kbd "C-;") 'iedit-mode)

;; window selection
(global-set-key (kbd "M-1") 'select-window-1)
(global-set-key (kbd "M-2") 'select-window-2)
(global-set-key (kbd "M-3") 'select-window-3)
(global-set-key (kbd "M-4") 'select-window-4)
(global-set-key (kbd "M-5") 'select-window-5)
(global-set-key (kbd "M-6") 'select-window-6)
(global-set-key (kbd "M-7") 'select-window-7)
(global-set-key (kbd "M-8") 'select-window-8)
(global-set-key (kbd "M-9") 'select-window-9)
(global-set-key (kbd "M-0") 'select-window-0)
