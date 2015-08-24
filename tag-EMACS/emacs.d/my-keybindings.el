(global-set-key [M-down-mouse-1] 'facemenup-customize-face-at-mouse)

(defhydra hydra-fontsize (:hint nil)
  "
Font scaling micro state
------------------------
_+_: increase font size
_-_: decrease font size
_0_: reset font size
"
  ("+" text-scale-increase)
  ("=" text-scale-increase)
  ("-" text-scale-decrease)
  ("0" (text-scale-set 0)))

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
  "b" 'helm-mini
  "c" 'comment-or-uncomment-region
  "dc" 'dired-jump
  "dd" 'ido-dired
  "do" 'dired-jump-other-window
  "F" 'hydra-fontsize/body
  "gs" 'magit-status
  "gt" 'hydra-timemachine/body
  "H" 'hydra-highlight/body
  "i" 'indent-region-or-buffer
  "j" 'avy-goto-char
  "k" 'hydra-smartparens/body
  "pf" 'helm-projectile-find-file
  "pp" 'helm-projectile-switch-project
  "r" 'iedit-mode
  "s" 'save-buffer
  "tn" 'linum-mode
  "wa" 'ace-window
  "wc" 'delete-window
  "wC" 'delete-other-windows
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
  "mv" 'rspec-verify)

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

;; iedit
(global-set-key (kbd "C-;") 'iedit-mode)

;; make magit evil-compliant
(setq-default evil-overriding-maps
              '((magit-mode-map . nil)
                (magit-status-mode-map . nil)
                (magit-svn-status-mode-map . nil)
                (magit-svn-mode-map . nil)
                (magit-reflog-mode-map . nil)
                (magit-log-select-mode-map . nil)))
(setq-default evil-normal-state-modes
              '(magit-mode
                magit-diff-mode
                magit-status-mode
                magit-log-mode
                magit-reflog-mode
                magit-process-mode))
(setq-default evil-insert-state-modes
              '(magit-log-select-mode
                diff-mode
                git-rebase-mode
                magit-popup-mode
                magit-popup-sequence-mode))

(with-eval-after-load 'magit
  (define-key magit-mode-map "\s" nil)
  (define-key magit-diff-mode-map "\s" nil)
  (define-key magit-diff-mode-map "j" nil)

  (define-key magit-status-mode-map "j" 'next-line)
  (define-key magit-mode-map "j" 'next-line)
  (define-key magit-mode-map "k" 'previous-line)
  (define-key magit-file-section-map "K" 'magit-discard)
  (define-key magit-file-section-map "k" nil)
  (define-key magit-hunk-section-map "K" 'magit-discard)
  (define-key magit-hunk-section-map "k" nil)
  (define-key magit-unstaged-section-map "k" nil)
  (define-key magit-unstaged-section-map "K" 'magit-discard)
  (define-key magit-staged-section-map "K" 'magit-discard)
  (define-key magit-staged-section-map "k" nil)
  (define-key magit-stash-section-map "K" 'magit-stash-drop)
  (define-key magit-stash-section-map "k" nil)
  (define-key magit-stashes-section-map "K" 'magit-stash-clear)
  (define-key magit-stashes-section-map "k" nil)

  (define-key magit-untracked-section-map "K" 'magit-discard)
  (define-key magit-untracked-section-map "k" nil)

  (define-key magit-branch-section-map "K" 'magit-branch-delete)
  (define-key magit-branch-section-map "k" nil)

  (define-key magit-remote-section-map "K" 'magit-remote-remove)
  (define-key magit-remote-section-map "k" nil)

  (define-key magit-tag-section-map "k" nil)
  (define-key magit-tag-section-map "K" 'magit-tag-delete))
