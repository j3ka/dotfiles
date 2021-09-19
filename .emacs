(setq god-mode-enable-function-key-translation nil)
;; PACKAGES
;; (add-to-list 'load-path "~/.emacs.d/local")
;;(load "broceliande.el")
;;(require 'broceliande)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
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
    magit
    git-gutter
    highlight-parentheses
    yaml-mode
    smart-comment
    fic-mode
    emmet-mode
    ;; JS
    vue-mode ;; vuejs support
    god-mode
    dimmer
    paredit
    clojure-mode
    clojure-mode-extra-font-locking
    cider
    smex
    hl-line
    slime
    common-lisp-snippets
    doom-modeline
    autothemer
    hl-todo
    lsp-ui
    ;; lsp-java ;; uncoment this for java dev
    go-mode
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
   [unspecified "#FFFFFF" "#d15120" "#5f9411" "#d2ad00" "#6b82a7" "#a66bab" "#6b82a7" "#505050"])
 '(beacon-color "#c82829")
 '(custom-enabled-themes '(almost-mono-white))
 '(custom-safe-themes
   '("cbd85ab34afb47003fa7f814a462c24affb1de81ebf172b78cb4e65186ba59d2" "00c5138bb71c95ca37a0fc845656498a8b4ff271ba4e0e0845732d188359d55a" "69ecb7a75a0a8440df4b9ffe28b46dadf849b499c7e10680c26b99a84df773ca" "39f0ac86b012062fed46469cc5ea1b00aa534db587ad21d55a9717a1bac99a27" "45482e7ddf47ab1f30fe05f75e5f2d2118635f5797687e88571842ff6f18b4d5" "0961d780bd14561c505986166d167606239af3e2c3117265c9377e9b8204bf96" "b67b2279fa90e4098aa126d8356931c7a76921001ddff0a8d4a0541080dee5f6" "a61109d38200252de49997a49d84045c726fa8d0f4dd637fce0b8affaa5c8620" "c614d2423075491e6b7f38a4b7ea1c68f31764b9b815e35c9741e9490119efc0" "ffba0482d3548c9494e84c1324d527f73ea4e43fff8dfd0e48faa8fc6d5c2bc7" default))
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
 '(linum-format " %7i ")
 '(menu-bar-mode nil)
 '(objed-cursor-color "#ff5370")
 '(package-selected-packages
   '(go-mode dotnet danneskjold-theme csproj-mode lsp-ui lsp-mode yasnippet lsp-treemacs helm-lsp projectile hydra flycheck company avy which-key helm-xref dap-mode phpactor magit git-gutter highlight-parentheses yaml-mode smart-comment fic-mode emmet-mode vue-mode god-mode dimmer paredit clojure-mode clojure-mode-extra-font-locking cider smex hl-line slime common-lisp-snippets doom-modeline autothemer hl-todo))
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
;; Global params
(setq-default cursor-type 'bar)
(setq company-minimum-prefix-length 1
      company-idle-delay 0.0)
(setq whitespace-display-mappings
      '((tab-mark 9 [124 9] [92 9])))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global modes
(global-company-mode t)
(yas-global-mode)
(global-git-gutter-mode +1)
(highlight-parentheses-mode t)
(delete-selection-mode t)
(server-start)
(global-whitespace-mode)
(setq ring-bell-function 'ignore) ;; disable beeep-sound on input in LSP-mode
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
(global-hl-line-mode)
(global-hl-todo-mode)
(dimmer-mode t)
;; Font Settings:
(set-face-attribute 'default nil :height 130)
(add-to-list 'default-frame-alist '(font . "Hack" ))
(set-face-attribute 'default t :font "Hack" )
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
(setq-default indent-tabs-mode nil)
;;(setq display-line-numbers "%4d \u2502 ") ;; make line numbers compatibel with gitgutter
(setq inhibit-startup-message t)   ;; No startup page
(setq initial-scratch-message nil) ;; No *scratch* buffer message
;;(setq pop-up-windows nil)          ;; No popup windows
(defun smart-beginning-of-line ()
  "Move point to first non-whitespace character or beginning-of-line.

Move point to the first non-whitespace character on this line.
If point was already at that position, move point to beginning of line."
  (interactive "^") ; Use (interactive) in Emacs 22 or older
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))
(setq god-exempt-major-modes nil)
(setq god-exempt-predicates nil)
(setq which-key-popup-type 'minibuffer)
(setq god-exempt-major-modes nil)
(setq god-exempt-predicates nil)
(setq indent-tabs-mode nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Smooth scrolling
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 2) ;; keyboard scroll one line at a time
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CUSTOM KEYBINDINGS
(global-set-key (kbd "<f2>") 'ibuffer)
(global-set-key (kbd "<f3>") 'treemacs)
(global-set-key [home] 'smart-beginning-of-line)
(global-set-key (kbd "<escape>") #'god-mode-all)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; DOOM modeline
(doom-modeline-mode 1)
(setq doom-modeline-buffer-encoding t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CUSTOM FUNCTIONS
(defun my-god-mode-update-cursor-type ()
  (setq cursor-type (if (or god-local-mode buffer-read-only) 'box 'bar)))
(defun cljs-node-repl ()
  (interactive)
  (inf-clojure "clj -M -m cljs.main -co build.edn -re node -r"))
(defvar electrify-return-match "[\]}\)\"]")
(defun electrify-return-if-match (arg)
  "If the text after the cursor matches `electrify-return-match' then open and indent an empty line between the cursor and the text.  Move the cursor to the new line."
  (interactive "P")
  (let ((case-fold-search nil))
    (if (looking-at electrify-return-match)
        (save-excursion (newline-and-indent)))
    (newline arg)
    (indent-according-to-mode)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; THEME
;; (load-theme 'monodevelop-light t)
;; (load-theme 'monodevelop-dark t)
(setq hl-todo-keyword-faces
      '(("TODO"   . "#FF37FE")
        ("FIXME"  . "#FF37FE")))
;; (set-face-background 'hl-line "#000000")
;; (set-face-foreground 'highlight nil)
;; (set-face-background 'region "#B5D5FF")
;; (set-face-foreground 'font-lock-comment-delimiter-face "#999999")
;; (set-face-foreground 'font-lock-comment-face "#999999")
;; (set-face-foreground 'font-lock-keyword-face "Purple3")
;; (set-face-italic 'font-lock-comment-face t)
;; (set-face-bold 'font-lock-keyword-face t)
;; (set-face-foreground 'font-lock-function-name-face "Blue3")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GLOBAL HOOKS
(add-hook 'post-command-hook #'my-god-mode-update-cursor-type)
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
   (setq lsp-completion-show-kind t)
   ))
(add-hook 'php-mode-hook #'lsp)
(add-hook 'php-mode-hook #'fic-mode)
;;(add-hook 'php-mode-hook 'git-gutter-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; VUE-JS
(add-hook 'vue-mode-hook (lambda ()
   (company-mode t)
   (electric-pair-mode t)
   (global-display-line-numbers-mode t)
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
(add-hook 'vue-mode-hook #'emmet-mode)
(add-hook 'vue-mode-hook
          (lambda ()
            (set-face-background 'mmm-default-submode-face nil)))
(add-hook 'vue-mode-hook #'fic-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ReactJS
;; (add-hook 'prog-mode-hook #'lsp)
;; (with-eval-after-load 'lsp-mode
;;   (require 'dap-chrome)
;;   (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
;;   (yas-global-mode))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; RUST
(with-eval-after-load 'rust-mode
      (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
(add-hook 'rust-mode-hook (lambda ()
                            (company-mode t)
   (global-display-line-numbers-mode t)
   (electric-pair-mode t)
   (company-mode t)
   (setq lsp-enable-symbol-highlighting t)
   (setq lsp-ui-doc-enable t)
   (setq lsp-lens-enable t)
   (setq lsp-headerline-breadcrumb-enable t)
   (setq lsp-ui-sideline-enable t)
   (setq lsp-ui-sideline-enable t)
   (setq lsp-modeline-code-actions-enable t)
   (setq lsp-eldoc-enable-hover t)
   (setq lsp-completion-provider `lsp-completion-provider)
   (setq lsp-completion-enable t)
   (setq lsp-completion-show-detail t)
   (setq lsp-completion-show-kind t)
   ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; RACKET
(with-eval-after-load 'flymake
  (flymake-racket-setup))
(add-hook 'racket-mode-hook (lambda ()
                         (define-key racket-mode-map (kbd "<f5>") 'racket-run)
                         (paredit-mode t)
                         (turn-on-eldoc-mode)
                         (eldoc-add-command
                          'paredit-backward-delete
                          'paredit-close-round)
                         (global-set-key (kbd "RET") 'electrify-return-if-match)
                         (eldoc-add-command 'electrify-return-if-match)
                         (show-paren-mode t)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLOJURE
(add-hook 'clojure-mode-hook #'inf-clojure-minor-mode)
(add-hook 'clojure-mode-hook (lambda ()
                               (paredit-mode t)
                               (turn-on-eldoc-mode)
                               (eldoc-add-command
                                'paredit-backward-delete
                                'paredit-close-round)
                               (global-set-key (kbd "RET") 'electrify-return-if-match)
                               (eldoc-add-command 'electrify-return-if-match)
                               (show-paren-mode t)))
(add-hook 'clojure-mode-hook
            (lambda ()
              (push '("'" . ?•) prettify-symbols-alist)
              ;; (push '("recur" . ?Ⓡ) prettify-symbols-alist)
              ;; (push '("loop" . ?Ⓛ) prettify-symbols-alist)
              ;; (push '("defn" . ?⨍) prettify-symbols-alist)
              ;; (push '("fn" . ?λ) prettify-symbols-alist)
              ;; (push '("->>" . ?⇉) prettify-symbols-alist)
              ;; (push '("->" . ?→) prettify-symbols-alist)
              (push '("->>" . ?⯈) prettify-symbols-alist)
              (push '("->" . ?ᐅ) prettify-symbols-alist)
              (push '("<=" . ?≤) prettify-symbols-alist)
              (push '(">=" . ?≥) prettify-symbols-alist)
              (prettify-symbols-mode)
              ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; COMMON LISP
(add-hook 'lisp-mode-hook
          (lambda ()
            (turn-on-eldoc-mode)
            (eldoc-add-command
             'paredit-backward-delete
             'paredit-close-round)
            (global-set-key (kbd "RET") 'electrify-return-if-match)
            (eldoc-add-command 'electrify-return-if-match)
            (show-paren-mode t)
            (paredit-mode t)
            (setq inferior-lisp-program "/usr/bin/sbcl")
            (prettify-symbols-mode)))
;; ELISP
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (turn-on-eldoc-mode)
            (eldoc-add-command
             'paredit-backward-delete
             'paredit-close-round)
            (global-set-key (kbd "RET") 'electrify-return-if-match)
            (eldoc-add-command 'electrify-return-if-match)
            (show-paren-mode t)
            (paredit-mode t)
            (prettify-symbols-mode)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; C#
;; (defun my-csharp-repl ()
;;     "Switch to the CSharpRepl buffer, creating it if necessary."
;;     (interactive)
;;     (if-let ((buf (get-buffer "*CSharpRepl*")))
;;         (pop-to-buffer buf)
;;       (when-let ((b (make-comint "CSharpRepl" "csharp")))
;;         (switch-to-buffer-other-window b))))
(add-hook 'csharp-mode-hook
          (lambda ()
            ;; (define-key (kbd "C-c C-z") 'my-csharp-repl)
            (add-to-list 'company-backends 'company-omnisharp)
            (lsp)
            (company-mode t)
            (global-display-line-numbers-mode t)
            (setq lsp-enable-symbol-highlighting t)
            (setq lsp-ui-doc-enable t)
            (setq lsp-lens-enable t)
            (setq lsp-headerline-breadcrumb-enable t)
            (setq lsp-ui-sideline-enable t)
            (setq lsp-ui-sideline-enable t)
            (setq lsp-modeline-code-actions-enable t)
            (setq lsp-eldoc-enable-hover t)
            (setq lsp-completion-provider `lsp-completion-provider)
            (setq lsp-completion-enable t)
            (setq lsp-completion-show-detail t)
            (setq lsp-completion-show-kind t)
            (electric-pair-mode 1)
            (electric-pair-local-mode 1)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; JAVA
(add-hook 'java-mode-hook (lambda ()
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
   (setq lsp-completion-enable t)
   (setq lsp-completion-show-detail t)
   (setq lsp-completion-show-kind t)
   ))
(add-hook 'java-mode-hook #'lsp)
(add-hook 'java-mode-hook #'fic-mode)
(add-hook 'java-mode-hook 'git-gutter-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GOLANG
(add-hook 'go-mode-hook (lambda ()
   (company-mode t)
   (global-display-line-numbers-mode t)
   (electric-pair-mode t)
   (setq lsp-enable-symbol-highlighting t)
   (setq lsp-ui-doc-enable t)
   (setq lsp-lens-enable t)
   (setq lsp-headerline-breadcrumb-enable t)
   (setq lsp-ui-sideline-enable t)
   (setq lsp-modeline-code-actions-enable t)
   (setq lsp-eldoc-enable-hover t)
   (setq lsp-completion-provider `lsp-completion-provider)
   (setq lsp-completion-enable t)
   (setq lsp-completion-show-detail t)
   (setq lsp-completion-show-kind t)
   (add-hook 'before-save-hook #'lsp-format-buffer t t)
   (add-hook 'before-save-hook #'lsp-organize-imports t t)
   ;; (set-variable 'tab-width 2)
   (setq exec-path (append (getenv "PATH") (list "." exec-directory)))
   ))
(add-hook 'go-mode-hook #'lsp)
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)
(add-hook 'go-mode-hook #'fic-mode)
(add-hook 'go-mode-hook 'git-gutter-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
