;;; packages.el --- ruby-mode Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar ruby-mode-packages
  '(
    ruby-mode
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar ruby-mode-excluded-packages '(enh-ruby-mode)
  "List of packages to exclude.")

;; For each package, define a function ruby-mode/init-<package-ruby-mode>
;;
(defun ruby-mode/init-ruby-mode ()
  "Initialize my package"
  (use-package ruby-mode
    :defer t))
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
