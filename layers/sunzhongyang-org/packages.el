;;; packages.el --- sunzhongyang-org layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author:  <mp@MATTHEWPERRYWIN>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `sunzhongyang-org-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `sunzhongyang-org/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `sunzhongyang-org/pre-init-PACKAGE' and/or
;;   `sunzhongyang-org/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst sunzhongyang-org-packages
  '(
    ;; (org :location built-in)
    ;; org-mac-link
    org-autolist
    ;; org-pomodoro
    ;; deft
    ;; sound-wav
    ;; ob-typescript
    ;; evil-org
    ;; org-tree-slide
    ;; ox-reveal
    ;; worf
    ;; org-download
    ;; plain-org-wiki
    )
)

;;; packages.el ends here
