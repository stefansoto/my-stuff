;; Modes configuration for my Emacs configuration.
;; (c) Stefan Soto 2014 under GPL v3 unless otherwise stated. See LICENSE.

;; Flycheck
;; (add-hook 'after-init-hook #'global-flycheck-mode)

;; enable java development enviroment emac when loading java files
(add-hook 'java-mode-hook
          (lambda ()
            (load "jde")))

;; enable paredit
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)

(add-hook 'org-mode
          (lambda ()
                 ('flyspell-mode
                  'visual-line-mode)))
