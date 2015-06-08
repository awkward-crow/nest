;; dot.emacs

;; get rid of the bloody tool bar
(tool-bar-mode -1)

;; give menu-bar the same treatment
(menu-bar-mode -1)

;; and the scroll-bar
(scroll-bar-mode -1)

;; Doh!
(setq inhibit-startup-screen t)

;; get rid of the bloody beeping!!
(setq ring-bell-function 'ignore)

;; get rid of the bloody beeping!!
(setq ring-bell-function 'ignore)

;; C-h for help, try also f-1
(define-key global-map "\C-h" 'help-command)
(fset 'help-command help-map)

;; do _not_ make backup files
(setq make-backup-files nil) 
(setq vc-cvs-stay-local nil)

;; melpa etc

(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

(require 'package)
(package-initialize)

(require 'undo-tree)

(require 'color-theme)
(color-theme-initialize)

(setq lib-emacs (concat (getenv "HOME") "/a/emacs/lib"))

;; local color-themes
(add-to-list 'load-path (concat lib-emacs "/color-themes"))

;; color-theme-less
 
;; others ... 
(require 'color-theme-subdued)
(require 'color-theme-dude)

(color-theme-dude)

(require 'markdown-mode)

(require 'erlang)

(require 'ess-site)

(require 'poly-R)
(require 'poly-markdown)

;;; MARKDOWN
(add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))

;;; R modes
(add-to-list 'auto-mode-alist '("\\.Snw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rnw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))


;; scala ?!?

(require 'scala-mode2)


;; pony-lang

(require 'ponylang-mode)
(add-hook
  'ponylang-mode-hook
  (lambda ()
    (set-variable 'indent-tabs-mode nil)
    (set-variable 'tab-width 2)))


;; more convenient key for dabbrev-expand
(define-key global-map "\M-." 'dabbrev-expand)

;; save buffer
(define-key global-map "\M-o" 'save-buffer)

(define-key global-map "\M-," 'comment-dwim)

;; C-x etc, see http://xahlee.org/emacs/emacs_dvorak_C-x.html
(keyboard-translate ?\C-t ?\C-x)
(keyboard-translate ?\C-x ?\C-t)

;; enable copy and paste with the mouse, i.e. X11 copy and paste
;; follow the advice at http://www.emacswiki.org/emacs/CopyAndPaste
(setq x-select-enable-primary t)
(setq x-select-enable-clipboard nil)

;; [d]evil
(add-to-list 'load-path "~/a/devil/evil")
(require 'evil)
(evil-mode 1)


;; end
