;; Anything related to string completion in Emacs.
;; (c) Jack McCracken 2014 under GPL v3 unless otherwise stated. See LICENSE.
;; thank's Jack again. Source https://raw.githubusercontent.com/JackMc/dotfiles/master/.emacs.d/completion.el

;; Ido - Complete file names in file open dialog.
(ido-mode 1)

;; Auto-Complete.el completion in code buffers.
(require 'auto-complete)
(require 'auto-complete-config)
(setq ac-ignore-case nil)
(ac-config-default)

;; Save a couple characters with y-or-n instead of yes-or-no.
(defalias 'yes-or-no-p 'y-or-n-p)

