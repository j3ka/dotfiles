(setq god-mode-enable-function-key-translation nil)
;; PACKAGES
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'load-path (concat user-emacs-directory "local/"))
(package-initialize)
(setq package-selected-packages '(
    lsp-mode
    yasnippet
    lsp-treemacs
    helm-lsp
    projectile
    ripgrep
    treemacs-projectile
    flycheck-projectile
    ibuffer-projectile
    projectile-ripgrep
    hydra
    flycheck
    company
    avy
    which-key
    helm-xref
    dap-mode
    phpactor
    git-gutter
    highlight-parentheses
    yaml-mode
    smart-comment
    fic-mode
    emmet-mode
    vue-mode
    god-mode
    dimmer
    paredit
    clojure-mode
    clojure-mode-extra-font-locking
    cider
    clj-refactor
    smex
    hl-line
    slime
    common-lisp-snippets
    hl-todo
    lsp-ui
    beacon
    undo-fu
    eldoc-overlay
    magit
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
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(ansi-term-color-vector
   [unspecified "#FFFFFF" "#d15120" "#5f9411" "#d2ad00" "#6b82a7" "#a66bab" "#6b82a7" "#505050"] t)
 '(beacon-color "#8ac6f2")
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   '("d916b686ba9f23a46ee9620c967f6039ca4ea0e682c1b9219450acee80e10e40" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "d0fd069415ef23ccc21ccb0e54d93bdbb996a6cce48ffce7f810826bb243502c" "8f5b54bf6a36fe1c138219960dd324aad8ab1f62f543bed73ef5ad60956e36ae" "ffba0482d3548c9494e84c1324d527f73ea4e43fff8dfd0e48faa8fc6d5c2bc7" "cbd85ab34afb47003fa7f814a462c24affb1de81ebf172b78cb4e65186ba59d2" "b494aae329f000b68aa16737ca1de482e239d44da9486e8d45800fd6fd636780" default))
 '(diary-entry-marker 'font-lock-variable-name-face)
 '(diff-hl-show-hunk-posframe-internal-border-color "#ffffffffffff")
 '(emms-mode-line-icon-color "#358d8d")
 '(ensime-sem-high-faces
   '((var :foreground "#000000" :underline
          (:style wave :color "yellow"))
     (val :foreground "#000000")
     (varField :foreground "#600e7a" :slant italic)
     (valField :foreground "#600e7a" :slant italic)
     (functionCall :foreground "#000000" :slant italic)
     (implicitConversion :underline
                         (:color "#c0c0c0"))
     (implicitParams :underline)))
 '(exwm-floating-border-color "#222D32")
 '(fci-rule-character-color "#d9d9d9")
 '(fci-rule-color "#37474F")
 '(highlight-tail-colors ((("#354440") . 0) (("#2f434b") . 20)))
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#3a81c3")
     ("OKAY" . "#3a81c3")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#42ae2c")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(jdee-db-active-breakpoint-face-colors (cons "#171F24" "#c792ea"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#171F24" "#c3e88d"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#171F24" "#37474F"))
 '(linum-format " %4i ")
 '(menu-bar-mode nil)
 '(mini-frame-show-parameters '((top . 0) (width . 0.8) (left . 0.5) (height . 15)))
 '(objed-cursor-color "#ff5370")
 '(package-selected-packages
   '(eldoc-overlay treemacs-all-the-icons ace-jump-mode undo-fu undo-tree xhair beacon rainbow-mode intellij-theme hy-mode almost-mono-themes molokai-theme csharp-mode spacemacs-theme go-mode dotnet danneskjold-theme csproj-mode lsp-ui lsp-mode yasnippet lsp-treemacs helm-lsp projectile hydra flycheck company avy which-key helm-xref dap-mode phpactor magit git-gutter highlight-parentheses yaml-mode smart-comment fic-mode emmet-mode vue-mode god-mode dimmer paredit clojure-mode clojure-mode-extra-font-locking cider smex hl-line slime common-lisp-snippets autothemer hl-todo))
 '(pdf-view-midnight-colors (cons "#EEFFFF" "#263238"))
 '(rustic-ansi-faces
   ["#263238" "#ff5370" "#c3e88d" "#ffcb6b" "#82aaff" "#c792ea" "#89DDFF" "#EEFFFF"])
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#263238")
 '(vc-annotate-color-map
   (list
    (cons 20 "#c3e88d")
    (cons 40 "#d7de81")
    (cons 60 "#ebd476")
    (cons 80 "#ffcb6b")
    (cons 100 "#fcb66b")
    (cons 120 "#f9a16b")
    (cons 140 "#f78c6c")
    (cons 160 "#e78e96")
    (cons 180 "#d690c0")
    (cons 200 "#c792ea")
    (cons 220 "#d97dc1")
    (cons 240 "#ec6898")
    (cons 260 "#ff5370")
    (cons 280 "#cd5067")
    (cons 300 "#9b4d5f")
    (cons 320 "#694a57")
    (cons 340 "#37474F")
    (cons 360 "#37474F")))
 '(vc-annotate-very-old-color nil))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GLOBAL PARAMS
(setq-default cursor-type 'bar)
(setq company-minimum-prefix-length 1 company-idle-delay 0.0)
(setq whitespace-display-mappings '((tab-mark 9 [124 9] [92 9])))
(setq whitespace-style '(face tabs tab-mark trailing))
(setq-default electric-indent-inhibit t)
(setq make-backup-files nil) ;; stop creating ~ files
(setq create-lockfiles nil) ;; stop creating # files
(setq-default indent-tabs-mode nil)
(setq display-line-numbers "%4d \u2502 ") ;; make line numbers compatibel with gitgutter
(setq inhibit-startup-message t)   ;; No startup page'
(setq initial-scratch-message nil) ;; No *scratch* buffer message
;;(setq pop-up-windows nil)
(setq god-exempt-major-modes nil)
(setq god-exempt-predicates nil)
(setq which-key-popup-type 'minibuffer)
(setq god-exempt-major-modes nil)
(setq god-exempt-predicates nil)
(setq indent-tabs-mode nil)
;; (setq mode-line-format nil)
;; (setq-default mode-line-format nil)
(setq window-divider-default-places t)
(setq window-divider-default-bottom-width 3)
(setq window-divider-default-right-width 3)
(setq ring-bell-function 'ignore) ;; disable beeep-sound on input in LSP-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GLOBAL MODES
(global-company-mode t)
(yas-global-mode)
(highlight-parentheses-mode t)
(delete-selection-mode t)
(server-start)
(global-whitespace-mode)
(menu-bar-mode 0)                  ;; No menubar
(tool-bar-mode 0)                  ;; No toolbar
(tooltip-mode  0)                  ;; No tooltip
(scroll-bar-mode 0)                ;; Noe scrollbar
(cua-mode t)
(god-mode)
(which-key-mode)
(which-key-enable-god-mode-support)
(dimmer-configure-which-key)
(dimmer-configure-helm)
(dimmer-mode t)
;; (global-hl-line-mode)
(global-hl-todo-mode)
(dimmer-mode t)
(window-divider-mode)
(beacon-mode t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SMOOTH SCROLLING
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil)            ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't)                  ;; scroll window under mouse
(setq scroll-step 2)                                ;; keyboard scroll one line at a time
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CUSTOM FUNCTIONS
(defun my-god-mode-update-cursor-type ()
  (setq cursor-type (if (or god-local-mode buffer-read-only) 'box 'bar)))

(defun cljs-node-repl ()
  (interactive)ibuffer
  (inf-clojure "clj -M -m cljs.main -co build.edn -re node -r"))

(defvar electrify-return-match "[\]}\)\"]")

(defun electrify-return-if-match (arg)
  "If the text after the cursor matches `electrify-return-match'
then open and indent an empty line between the cursor and the text.
Move the cursor to the new line."
  (interactive "P")
  (let ((case-fold-search nil))
    (if (looking-at electrify-return-match)
        (save-excursion (newline-and-indent)))
    (newline arg)
    (indent-according-to-mode)))

(defun smart-beginning-of-line ()
 "Smart Home"
  (interactive "^")
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CUSTOM KEYBINDINGS
(global-set-key (kbd "<f2>") 'ibuffer)
(global-set-key [home] 'smart-beginning-of-line)
(global-set-key (kbd "<escape>") #'god-mode-all)
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-S-z"))
(global-set-key (kbd "C-z")   'undo-fu-only-undo)
(global-set-key (kbd "C-S-z") 'undo-fu-only-redo)
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-;") 'avy-goto-char-timer)
(global-set-key (kbd "C-M-g") 'magit)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MY THEME
(setq modus-themes-bold-constructs t)
(setq modus-themes-italic-constructs t)
(setq modus-themes-paren-match '(bold intense))
(setq modus-themes-syntax '(green-strings))
(setq modus-themes-region '(bg-only no-extended))
(setq modus-themes-completions 'opinionated)
(load-theme 'modus-operandi t)
(set-face-attribute 'region nil :background "#DFEEFF")
(require 'treemacs-all-the-icons)    ;;treemacs all-the-icons theme
(treemacs-load-theme "all-the-icons");;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; FONT SETTINGS
(set-face-attribute 'default nil :height 130)
(add-to-list 'default-frame-alist '(font . "Jetbrains Mono Nerd Font Mono" ))
(set-face-attribute 'default t :font "JetbrainsMono Nerd Font Mono" )
(load "ligature") ;; Ligatures
(ligature-set-ligatures 'prog-mode '("-|" "-~" "---" "-<<" "-<" "--" "->" "->>" "-->" "///" "/=" "/=="
                                      "/>" "//" "/*" "*>" "***" "*/" "<-" "<<-" "<=>" "<=" "<|" "<||"
                                      "<|||" "<|>" "<:" "<>" "<-<" "<<<" "<==" "<<=" "<=<" "<==>" "<-|"
                                      "<<" "<~>" "<=|" "<~~" "<~" "<$>" "<$" "<+>" "<+" "</>" "</" "<*"
                                      "<*>" "<->" "<!--" ":>" ":<" ":::" "::" ":?" ":?>" ":=" "::=" "=>>"
                                      "==>" "=/=" "=!=" "=>" "===" "=:=" "==" "!==" "!!" "!=" ">]" ">:"
                                      ">>-" ">>=" ">=>" ">>>" ">-" ">=" "&&&" "&&" "|||>" "||>" "|>" "|]"
                                      "|}" "|=>" "|->" "|=" "||-" "|-" "||=" "||" ".." ".?" ".=" ".-" "..<"
                                      "..." "+++" "+>" "++" "[||]" "[<" "[|" "{|" "??" "?." "?=" "?:" "##"
                                      "###" "####" "#[" "#{" "#=" "#!" "#:" "#_(" "#_" "#?" "#(" ";;" "_|_"
                                      "__" "~~" "~~>" "~>" "~-" "~@" "$>" "^=" "]#"))
(global-ligature-mode t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GLOBAL HOOKS
(add-hook 'post-command-hook #'my-god-mode-update-cursor-type)
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'prog-mode-hook 'git-gutter-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PHP
(add-hook 'php-mode-hook (lambda ()
   ;;(ede-php-autoload-mode)
   (company-mode t)
   (global-display-line-numbers-mode t)
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
   ;; (setq lsp-clients-php-server-command "php ~/Programs/php/php-language-server/bin/php-language-server.php")
   (setq lsp-completion-enable t)
   (setq lsp-completion-show-detail t)
   (setq lsp-completion-show-kind t)))
(add-hook 'php-mode-hook #'lsp)
(add-hook 'php-mode-hook #'fic-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLOJURE
(add-hook 'clojure-mode-hook #'inf-clojure-minor-mode)
(add-hook 'clojure-mode-hook 'linum-mode)
(add-hook 'clojure-mode-hook (lambda ()
                               (paredit-mode t)
                               (turn-on-eldoc-mode)
                               (eldoc-overlay-mode)
                               (eldoc-add-command
                                'paredit-backward-delete
                                'paredit-close-round)
                               (global-set-key (kbd "RET") 'electrify-return-if-match)
                               (eldoc-add-command 'electrify-return-if-match)
                               (show-paren-mode t)
                               (clj-refactor-mode 1)
                               (prettify-symbols-mode)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; COMMON LISP
;; (add-hook 'lisp-mode-hook
;;           (lambda ()
;;             (turn-on-eldoc-mode)
;;             (eldoc-add-command
;;              'paredit-backward-delete
;;              'paredit-close-round)
;;             (global-set-key (kbd "RET") 'electrify-return-if-match)
;;             (eldoc-add-command 'electrify-return-if-match)
;;             (show-paren-mode t)
;;             (paredit-mode t)
;;             (setq inferior-lisp-program "/usr/bin/sbcl")
;;             (prettify-symbols-mode)))
;; ELISP
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (turn-on-eldoc-mode)
            (eldoc-add-command
             'paredit-backward-delete
             'paredit-close-round)
            (eldoc-overlay-mode)
            (global-set-key (kbd "RET") 'electrify-return-if-match)
            (eldoc-add-command 'electrify-return-if-match)
            (show-paren-mode t)
            (paredit-mode t)
            (rainbow-mode t)
            (prettify-symbols-mode)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
