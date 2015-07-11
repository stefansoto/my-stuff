;; == sotosgc's Emacs Configuration ==
;; Emacs Version:    24.3.1 for Linux
;; Created:          circa 1999
;; Last Edit:        September 27th, 2014

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

;; ====== LOAD =======
(load "~/.emacs.d/modes.el") ;; different modes
(load "~/.emacs.d/completion.el") ;; auto complete
(load "~/.emacs.d/misc.el") ;; misc things
(load "~/.emacs.d/requires.el") ;; installing important things
(load "~/.emacs.d/keybindings.el") ;; custom keybindings
