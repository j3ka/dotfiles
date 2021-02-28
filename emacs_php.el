;; PACKAGES
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(setq package-selected-packages '(
    lsp-mode
    yasnippet
    lsp-treemacs
    helm-lsp
    projectile
    hydra
    flycheck
    company
    avy
    which-key
    helm-xref
    dap-mode
    phpactor
    magit
    git-gutter
    highlight-parentheses
    yaml-mode
    smart-comment
    ;; JS
    vue-mode ;; vuejs support
))
(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; AUTO-GENERATED VARIABLES
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   '("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
 '(package-selected-packages
   '(magit ede-php-autoload php-eldoc eldoc yasnippet lsp-ui company-lsp lsp-mode php-quickhelp php-mode))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 128 :width normal)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global modes
(global-company-mode t)
(yas-global-mode)
(global-git-gutter-mode +1)
(highlight-parentheses-mode t)
(delete-selection-mode t)
(server-start)
(global-whitespace-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global params
(setq-default cursor-type 'bar)
(setq company-minimum-prefix-length 1
      company-idle-delay 0.0)
(setq whitespace-display-mappings
      '((tab-mark 9 [124 9] [92 9])))

(setq whitespace-style '(face tabs tab-mark trailing))
(setq-default electric-indent-inhibit t)
(setq make-backup-files nil) ; stop creating ~ files
(setq create-lockfiles nil) ; stop creating # files
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CUSTOM KEYBINDINGS
(global-set-key (kbd "<f2>") 'ibuffer)
(global-set-key (kbd "<f3>") 'treemacs)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CUSTOM FUNCTIONS

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PHP
(add-hook 'php-mode-hook (lambda ()
   ;;(ede-php-autoload-mode)
   (company-mode t)
   (linum-mode t)
   (electric-pair-mode t)
   (setq lsp-enable-symbol-highlighting t)
   (setq lsp-ui-doc-enable t)
   (setq lsp-lens-enable t)
   (setq lsp-headerline-breadcrumb-enable t)
   (setq lsp-ui-sideline-enable t)
   (setq lsp-ui-sideline-enable t)
   (setq lsp-modeline-code-actions-enable t)
   (setq lsp-eldoc-enable-hover t)
   (setq lsp-completion-provider `lsp-completion-provider)
   (setq lsp-clients-php-server-command "php ~/Programs/php/php-language-server/bin/php-language-server.php")
   (setq lsp-completion-enable t)
   (setq lsp-completion-show-detail t)
   (setq lsp-completion-show-kind t)
   ))
(add-hook 'php-mode-hook #'lsp)
;;(add-hook 'php-mode-hook 'git-gutter-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; VUE-JS
(add-hook 'vue-mode-hook (lambda ()
   (company-mode t)
   (linum-mode t)
   (electric-pair-mode t)
   (setq lsp-enable-symbol-highlighting t)
   (setq lsp-ui-doc-enable t)
   (setq lsp-lens-enable t)
   (setq lsp-headerline-breadcrumb-enable t)
   (setq lsp-ui-sideline-enable t)
   (setq lsp-ui-sideline-enable t)
   (setq lsp-modeline-code-actions-enable t)
   (setq lsp-eldoc-enable-hover t)
   (setq lsp-completion-provider `lsp-completion-provider)
   (setq lsp-vetur-completion-auto-import t)
   (setq lsp-vetur-validation-template t)
   (setq lsp-completion-enable t)
   (setq lsp-completion-show-detail t)
   (setq lsp-completion-show-kind t)
))
(add-hook 'vue-mode-hook #'lsp)
(add-hook 'mmm-mode-hook
          (lambda ()
            (set-face-background 'mmm-default-submode-face nil)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
