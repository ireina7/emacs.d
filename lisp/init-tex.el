;;; init-tex.el --- latex configurations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(maybe-require-package 'auctex)
(maybe-require-package 'cdlatex)

(add-to-list 'auto-mode-alist '("\\.tex$" . LaTeX-mode))

(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)
(autoload 'cdlatex-mode "cdlatex" "CDLaTeX Mode" t)
(autoload 'turn-on-cdlatex "cdlatex" "CDLaTeX Mode" nil)

(when (fboundp 'display-line-numbers-mode)
  (add-hook 'latex-mode-hook 'display-line-numbers-mode))


(provide 'init-tex)
;;; init-tex.el ends here
