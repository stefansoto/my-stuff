;; == sotosgc's Emacs Configuration ==
;; Emacs Version:    24.3.1 for Linux
;; Created:          circa 1999
;; Last Edit:        June 30th, 2014

;; This file is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3 of
;; the License, or (at your option) any later version.

;; This file is distributed in the hope that it will be
;; useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU General Public License for more details.

;; You should have received a copy of the GNU General Public
;; License along with this file; if not, write to the Free
;; Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
;; MA 02111-1307, USA.

;; ====== LOAD PATH ======
;; load everything in ~/.emacs.d/
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

;; ====== THEME ======
(load-theme 'zenburn t) ;; getting this out of the way first

;; trust me this is important that it stays at the top. otherwise emacs doesn't trust sml.
(custom-set-variables '(custom-safe-themes (quote("c5a044ba03d43a725bd79700087dea813abcb6beb6be08c7eb3303ed90782482" "3a727bdc09a7a141e58925258b6e873c65ccf393b2240c51553098ca93957723" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" default))) '(doc-view-continuous t))

;; sml to make the modeline better
(require 'smart-mode-line)
(sml/setup)
(sml/apply-theme 'respectful)
(sml/toggle-shorten-directory)

;; ====== VARIABLES =======
;; disable startup screen...
(setq inhibit-startup-message t)

;; disable gui scrollbar...
(scroll-bar-mode -1)
;; disable gui toolbar...
(tool-bar-mode -1)
(menu-bar-mode -1)

;; set default find file directory to home...
(setq default-directory "~/")

;; tabs
(setq-default indent-tabs-mode nil) ;; disable tabs
(setq-default c-basic-offset 4) ;; tab width in c, c++, java
(setq-default tab-width 4) ;; general tab width

;; temporary directory for saved things
(setq TEMPORARY_DIRECTORY "~/.emacs_temporary")

;; fix scrolling...
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed 1) ;; slowly accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; no insert key
(put 'overwrite-mode 'disabled t)

;; paren matching highlighting
(show-paren-mode t)

;; avoid those #filename files (lockfiles)
(setq create-lockfiles nil)

;; cursor move with buffer split automatically
(defadvice split-window
    (after move-point-to-new-window activate)
  (other-window 1))

;; delete selected text
(delete-selection-mode nil)

;; save backups and emergency saves to /tmp because fuck filling up my home partition
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; put the stupid shit in the garbage
(setq custom-file "~/.emacs.d/garbage.el")

;; ====== KEYBINDINGS =======

;; horizontal split... 
(global-set-key (kbd "C-c v") 'split-window-horizontally)
;; vertical split...
(global-set-key (kbd "C-c b") 'split-window-vertically)

;; switch to next-buffer...
(global-set-key (kbd "M-n") 'next-buffer)
;; switch to previous buffer...
(global-set-key (kbd "M-p") 'previous-buffer)

;; run "eshell"...
(global-set-key (kbd "C-c s") 'ansi-term)

;; run "dirtree"...
(global-set-key (kbd "C-c t") 'dirtree)
;; run "dired"...
(global-set-key (kbd "C-c d") 'dired)

;; run "goto-line"...
(global-set-key (kbd "C-c g") 'goto-line)

;; run "comment-region"...
(global-set-key (kbd "C-c c") 'comment-region)
;; run "uncomment-region"...
(global-set-key (kbd "C-c u") 'uncomment-regionde)

;; open last killed buffer like chrome 
(define-key global-map (kbd "C-S-t") 'find-last-killed-file)

;; flyspell spellchecking
(global-set-key (kbd "C-c f") 'flyspell-mode)
;; visual line mode (word wrapping)
(global-set-key (kbd "C-c w") 'visual-line-mode)

;; make enter now indent and newline
(define-key global-map (kbd "RET") 'newline-and-indent)

;; multiple cursors
(global-set-key (kbd "C-c m") 'mc/edit-lines)

;; kill-some-buffers
(global-set-key (kbd "C-c n") 'kill-some-buffers)

;; join current line with next
(global-set-key (kbd "M-j")
                (lambda ()
                  (interactive)
                  (join-line -1)))

;; Move more quickly
(global-set-key (kbd "C-S-n")
                (lambda ()
                  (interactive)
                  (ignore-errors (next-line 5))))
(global-set-key (kbd "C-S-p")
                (lambda ()
                  (interactive)
                  (ignore-errors (previous-line 5))))
(global-set-key (kbd "C-S-f")
                (lambda ()
                  (interactive)
                  (ignore-errors (forward-char 5))))
(global-set-key (kbd "C-S-b")
                (lambda ()
                  (interactive)
                  (ignore-errors (backward-char 5))))

;; ====== PACKAGES =======

;; edit more than one line at once
(require 'multiple-cursors)

;; linum
(require 'linum)
(global-linum-mode 1)

;; interactively do
(require 'ido)
(ido-mode t)

;; bullets, for org mode
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; Auto-Complete.el completion in code buffers.
(require 'auto-complete)
(require 'auto-complete-config)
(setq ac-ignore-case nil)
(ac-config-default)

;; Save a couple characters with y-or-n instead of yes-or-no.
(defalias 'yes-or-no-p 'y-or-n-p)

;; for java development
(add-hook 'java-mode-hook
          (lambda ()
            (load "jde")))

(add-hook 'org-mode
          (lambda ()
            ('flyspell-mode
             'visual-line-mode)))
