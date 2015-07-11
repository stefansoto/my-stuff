;; Custom appearence related things in Emacs.
;; (c) Stefan Soto 2014 under GPL v3 unless otherwise stated. See LICENSE.


;; disable startup screen...
(setq inhibit-startup-message t)

;; disable gui scrollbar...
(scroll-bar-mode -1)
;; disable gui toolbar...
(tool-bar-mode -1)

;; tabs
(setq-default indent-tabs-mode nil) ;; disable tabs
(setq-default c-basic-offset 4) ;; tab width in c, c++, java
(setq-default tab-width 4) ;; general tab width
