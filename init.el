;; UI
(setq inhibit-startup-message t)
(setq visible-bell t)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 5)

;; Backup
(defvar backup-path (expand-file-name "backup" "~/.cache/emacs"))
(unless (file-directory-p backup-path) (make-directory backup-path t))
(setq make-backup-files t)
(setq backup-directory-alist `(("." . ,backup-path)))
(setq tramp-backup-directory-alist backup-directory-alist)
(setq backup-by-copying t)
(setq backup-by-copying-when-linked t)
(setq version-control t)
(setq kept-old-versions 2)
(setq kept-new-versions 2)
(setq delete-old-versions t)
(setq vc-make-backup-files nil)
(setq create-lockfiles nil)

;; Packages
(setq custom-file (locate-user-emacs-file "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(use-package magit
  :ensure t)
(use-package git-gutter
  :ensure t
  :init (global-git-gutter-mode +1))
;; (use-package evil
;;   :ensure t
;;   :config (evil-mode 1))

;; Editor
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Line numbers
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; Line truncation
(setq-default truncate-lines t)
