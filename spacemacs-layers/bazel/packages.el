;;; packages.el --- bazel layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Zack Lalanne <zack@thinkpad>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

(defconst bazel-packages
  '(
    (bazel-mode :location (recipe
                           :fetcher github
                           :repo bazelbuild/emacs-bazel-mode))
    (bazel-build :location (recipe
                           :fetcher github
                           :repo bazelbuild/emacs-bazel-mode))
    )
  "The list of Lisp packages required by the bazel layer.")

(defun bazel/init-bazel-mode ()
  (use-package bazel-mode
    :mode (("\\.bazel\\'"      . bazel-mode)
           ("\\.bzl\\'"        . bazel-mode)
           ("\\.BUILD\\'"      . bazel-mode)
           ("BUILD\\'"         . bazel-mode)
           ("WORKSPACE\\'"     . bazel-mode))
    :config
    (spacemacs/set-leader-keys-for-major-mode 'bazel-mode
      "=" 'bazel-mode-buildifier
    )
  )
)

(defun bazel/init-bazel-build ()
  (use-package bazel-build
    :config
    (spacemacs/set-leader-keys-for-major-mode 'bazel-mode
      "b" 'bazel-build
      "r" 'bazel-run
      "t" 'bazel-test))
)

;;; packages.el ends here
