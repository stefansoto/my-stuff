;; Custom keybindings in Emacs.
;; (c) Stefan Soto 2014 under GPL v3 unless otherwise stated. See LICENSE.

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
(global-set-key (kbd "C-c u") 'uncomment-region)

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

;; Toggle of back to indentation and beginning of line.
;; source https://github.com/JackMc/dotfiles/blob/master/.emacs.d/commands.el
(defun conditional-back-to-indent ()
  (interactive)
  (setq initial-point (point))
  (back-to-indentation)
  (if (eq (point) initial-point)
      (move-beginning-of-line nil)))

;; (global-set-key (kbd "C-c C-a") 'menu-bar-mode -1)
;; (global-set-key (kbd "C-c C-b") 'menu-bar-mode
