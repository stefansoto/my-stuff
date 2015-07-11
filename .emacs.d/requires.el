;; Requiring things for my Emacs configuration.
;; (c) Stefan Soto 2014 under GPL v3 unless otherwise stated. See LICENSE.

;; enable dirtree...
(autoload 'dirtree "dirtree" "Add directory to tree view" t)

;; ====== PACKAGES ======

;; edit more than one line at once
(require 'multiple-cursors)

;; linum
(require 'linum)
(global-linum-mode 1)

;; interactively do
(require 'ido)
(ido-mode t)

;; sml to make the modeline better
;;(require 'smart-mode-line)
;;(sml/setup)
;;(sml/apply-theme 'respectful)

;; processing-mode
(setq processing-location "~/Programs/processing-2.2.1/processing-java")
(setq processing-application-dir "~/Programs/processing-2.2.1")
(setq processing-sketchbook-dir "/home/sotosgc/Documents/")
(setq processing-output-dir "/tmp")

;; autocomplete
(defun processing-mode-init ()
  (make-local-variable 'ac-sources)
  (setq ac-sources '(ac-source-dictionary ac-source-yasnippet))
  (make-local-variable 'ac-user-dictionary)
  (setq ac-user-dictionary (append processing-functions
                                   processing-builtins
                                   processing-constants)))

(add-to-list 'ac-modes 'processing-mode)
(add-hook 'processing-mode-hook 'processing-mode-init)

;; melpa // marmalade    
;(when (>= emacs-major-version 24)
;  (require 'package)
;  (package-initialize)
;  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"); t)
;  ) 

;; bullets, for org mode
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
