(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(load-theme 'afternoon t)
(global-display-line-numbers-mode)
(desktop-save-mode 1)
(global-set-key (kbd "C-x w") 'menu-bar-open) ;;В gui-версии не работает переход между вкладками на командных клавишах
(global-set-key (kbd "C-x g") 'goto-line)
;;(setq x-select-enable-clipboard t)
;;(setq select-enable-clipboard t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ispell-dictionary nil)
 '(minimap-mode nil)
 '(minimap-window-location 'right)
 '(package-selected-packages
   '(minimap company-tabnine darkokai-theme afternoon-theme abyss-theme company ## eglot cmake-mode php-mode neotree jsonrpc go-mode flymake)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-to-list 'load-path "/some/path/neotree")
(require 'neotree)
(global-set-key (kbd "C-x e") 'neotree-toggle)
(electric-pair-mode 1)
(setq-default neo-show-hidden-files t)

;;(add-to-list 'eglot-server-programs '(foo-mode . ("foo-language-server" "--args")))
;;(add-hook 'after-init-hook 'global-company-mode)
(require 'company-tabnine) ;; вместо LSP-сервера и eglot'а
(add-to-list 'company-backends #'company-tabnine)
;; Trigger completion immediately.
(setq company-idle-delay 0)

;; Number the candidates (use M-1, M-2 etc to select completions).
(setq company-show-numbers t)
;; set transparency
;;В gui-версии работает норм
(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
;;(set-frame-parameter nil 'alpha nil)
 (add-to-list 'default-frame-alist '(alpha . (85 . 50)))

;;(menu-bar-mode -1)
(minimap-mode 1) ;;В gui-версии работает норм -- мб, нужно будет пересоздать M-x minimap-create и заново применить кастомизацию M-x customize-group minimap
