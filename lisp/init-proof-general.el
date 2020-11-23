;;; init-proof-general.el --- Proof General support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(when (maybe-require-package 'proof-general)

  (with-eval-after-load 'proof-general
    ;; In case proof-general cannot find coqtop
    (setq exec-path (append exec-path '("/usr/local/bin")))
    (setq proof-three-window-enable t)
    (setq coq-compile-before-require t)
    )
  )


(provide 'init-proof-general)
;;; init-proof-general.el ends here
