(defun auto-save-command ()
  "Save the current buffer if it is modified and the file is writeable."
  (when (and buffer-file-name
             (buffer-modified-p (current-buffer))
             (file-writable-p buffer-file-name))
    (save-buffer)))

(defmacro advise-commands (advice-name commands class &rest body)
  "Apply advice named ADVICE-NAME to multiple COMMANDS.
The body of the advice is in BODY."
  `(progn
     ,@(mapcar (lambda (command)
                 `(defadvice ,command (,class ,(intern (concat (symbol-name command) "-" advice-name)) activate)
                    ,@body))
               commands)))

;; advise all window switching functions
(advise-commands "auto-save"
                 (switch-to-buffer
                  other-window
                  windmove-up
                  windmove-down
                  windmove-left
                  windmove-right)
                 before
                 (auto-save-command))

(add-hook 'mouse-leave-buffer-hook 'auto-save-command)

(when (version<= "24.4" emacs-version)
  (add-hook 'focus-out-hook 'auto-save-command))
