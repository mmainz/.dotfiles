(setq auto-save-default t)
(setq auto-save-file-name-transforms `((".*" ,spacemacs-cache-directory t)))
(add-hook 'auto-save-hook 'save-buffer-if-visiting-file)

(defmacro advise-commands (advice-name commands class &rest body)
  "Apply advice named ADVICE-NAME to multiple COMMANDS.
The body of the advice is in BODY."
  `(progn
     ,@(mapcar (lambda (command)
                 `(defadvice ,command (,class ,(intern (concat (symbol-name command) "-" advice-name)) activate)
                    ,@body))
               commands)))

(advise-commands "auto-save"
                 (switch-to-buffer
                  other-window
                  windmove-up
                  windmove-down
                  windmove-left
                  windmove-right
                  select-window
                  select-window-1
                  select-window-2
                  select-window-3
                  select-window-4
                  select-window-5
                  select-window-6
                  select-window-7
                  select-window-8
                  select-window-9
                  select-window-0)
                 before
                 (save-buffer-if-visiting-file))

(add-hook 'focus-out-hook 'save-buffer-if-visiting-file)
