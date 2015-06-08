;; color-theme-dude.el -- color theme for Emacs derived from subdued theme by Jason Blevins

(require 'color-theme)

(defun color-theme-dude ()
  "color theme for Emacs derived from subdued color theme by Jason Blevins."
  (interactive)
  (color-theme-install
   '(color-theme-dude
     ((foreground-color . "gray74")
      (background-color . "#151515")
      ;;       (background-color . "#000")
      (background-mode . dark)
      (cursor-color . "#73d216") ; medium chameleon
      (mouse-color . "#73d216"))

     ;;; Standard font lock faces
     (default ((t (nil))))
     (font-lock-comment-face ((t (:foreground "#61635e")))) ; dark aluminum
     (font-lock-comment-delimiter-face ((t (:foreground "#61635e")))) ; dark aluminum
     (font-lock-doc-face ((t (:foreground "#77507b")))) ; plum
     (font-lock-doc-string-face ((t (:foreground "#77507b")))) ; plum
     (font-lock-string-face ((t (:foreground "gray74")))) 
     (font-lock-keyword-face ((t (:foreground "gray74")))) 
     (font-lock-builtin-face ((t (:foreground "gray74")))) 
     (font-lock-function-name-face ((t (:foreground "gray74")))) 
     (font-lock-variable-name-face ((t (nil))))
     (font-lock-preprocessor-face ((t (:foreground "gray74")))) 
     (font-lock-constant-face ((t (:foreground "gray74")))) 
     (font-lock-type-face ((t (:foreground "gray74")))) 
     (font-lock-warning-face ((t (:bold t :foreground "dark goldenrod")))) ; scarlet red

     ;; Search
     (isearch ((t (:foreground "#080808" :background "#edd400"))))
     (isearch-lazy-highlight-face ((t (:foreground "#080808" :background "#2e3436"))))

     ;; Emacs Interface
     (fringe ((t (:background "#151515"))))
     (border ((t (:background "#151515"))))
     (mode-line ((t (:background "#1f1f1f" :foreground "gray74"))))
     (mode-line-buffer-id ((t (:background "#1f1f1f" :foreground "gray74"))))
     (mode-line-inactive ((t (:background "#1f1f1f" :foreground "gray40"))))
     (minibuffer-prompt ((t (:foreground "#729fcf")))) ; light sky blue
     (region ((t (:background "#2e3436"))))

     ;; Parenthesis matching
     (show-paren-match-face ((t (:foreground "#2e3436" :background "#73d216"))))
     (show-paren-mismatch-face ((t (:foreground "#2e3436" :background "#ef2929"))))

     ;; Line highlighting
     (highlight ((t (:background "#1f1f1f" :foreground nil))))
     (highlight-current-line-face ((t (:background "#1f1f1f" :foreground nil))))

     ;; Calendar
     (holiday-face ((t (:foreground "#cc0000")))) ; dark scarlet red
     )))

(provide 'color-theme-dude)
