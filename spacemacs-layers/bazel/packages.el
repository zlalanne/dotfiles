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
                           :repo zlalanne/bazel-mode))
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
      "=" 'bazel-format
    )
  )
)

;;; packages.el ends here
