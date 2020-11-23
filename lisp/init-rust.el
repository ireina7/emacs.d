;;; init-rust.el --- Support for the Rust language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'rust-mode)
  (when (maybe-require-package 'racer)
    (add-hook 'rust-mode-hook #'racer-mode))
  (when (maybe-require-package 'company)
    (add-hook 'racer-mode-hook #'company-mode)))

(when (maybe-require-package 'flycheck-rust)
  (with-eval-after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))


;(setq racer-cmd "~/.cargo/bin/racer")
;(setq racer-rust-src-path (expand-file-name (getenv "RUST_SRC_PATH")))


(provide 'init-rust)
;;; init-rust.el ends here
