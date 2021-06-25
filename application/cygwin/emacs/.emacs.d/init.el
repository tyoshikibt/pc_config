;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(define-key key-translation-map [?\C-h] [?\C-?])

;; 指定行にジャンプする
(global-set-key "\C-j" 'goto-line)

;; 文字コードをutf-8に(https://qiita.com/ironsand/items/a53797bd48170104aa74)
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

;; elispファイルのパス
(setq load-path (cons "~/.emacs.d/elisp" load-path))

;;閉じカッコの自動挿入
(electric-pair-mode 1)

;;対応カッコのハイライト
(show-paren-mode t)

;; org-mode設定
;; 見出しをインデントする
(setq org-startup-indented t)
 
;; 見出しをインデントした時にアスタリスクが減るのを防ぐ
(setq org-indent-mode-turns-on-hiding-stars nil)
 
;; インデントの幅を設定
(setq org-indent-indentation-per-level 4)
 
;; 見出しの初期状態（見出しだけ表示）
;; (setq org-startup-folded 'content)
;; (put 'upcase-region 'disabled nil)
(setq org-startup-folded nil)

;; 折り返し
(setq org-startup-truncated nil)

;; use-package
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (mark-multiple use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'set-goal-column 'disabled nil)
