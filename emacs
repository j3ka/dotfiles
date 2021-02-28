(setq evil-want-integration t)
(setq evil-want-keybinding nil)

(require 'package)
;; https://github.com/moskalyovd/emacs-php-doc-block
(add-to-list 'load-path "~/.emacs.d/local/emacs-php-doc-block")
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
  ;; and `package-pinned-packages`. Most users will not need or want to do this.
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  )
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#a1efe4" "#fcfcfa"])
 '(ansi-term-color-vector
   [unspecified "#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#a1efe4" "#fcfcfa"] t)
 '(custom-enabled-themes (quote (doom-solarized-dark)))
 '(custom-safe-themes
   (quote
    ("edf1f9e74600cac84368d8c1ae2158db85217c3a02e3b1470545462a64cea016" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "00c5138bb71c95ca37a0fc845656498a8b4ff271ba4e0e0845732d188359d55a" "79586dc4eb374231af28bbc36ba0880ed8e270249b07f814b0e6555bdcb71fab" "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "7a994c16aa550678846e82edc8c9d6a7d39cc6564baaaacc305a3fdc0bd8725f" "82360e5f96244ce8cc6e765eeebe7788c2c5f3aeb96c1a765629c5c7937c0b5b" "6c3b5f4391572c4176908bb30eddc1718344b8eaff50e162e36f271f6de015ca" "0cb1b0ea66b145ad9b9e34c850ea8e842c4c4c83abe04e37455a1ef4cc5b8791" "5d09b4ad5649fea40249dd937eaaa8f8a229db1cec9a1a0ef0de3ccf63523014" "7b3d184d2955990e4df1162aeff6bfb4e1c3e822368f0359e15e2974235d9fa8" "54cf3f8314ce89c4d7e20ae52f7ff0739efb458f4326a2ca075bf34bc0b4f499" "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "93ed23c504b202cf96ee591138b0012c295338f38046a1f3c14522d4a64d7308" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" "b5fff23b86b3fd2dd2cc86aa3b27ee91513adaefeaa75adc8af35a45ffb6c499" "3c2f28c6ba2ad7373ea4c43f28fcf2eed14818ec9f0659b1c97d4e89c99e091e" "bf387180109d222aee6bb089db48ed38403a1e330c9ec69fe1f52460a8936b66" "e074be1c799b509f52870ee596a5977b519f6d269455b84ed998666cf6fc802a" "dde8c620311ea241c0b490af8e6f570fdd3b941d7bc209e55cd87884eb733b0e" "5b809c3eae60da2af8a8cfba4e9e04b4d608cb49584cb5998f6e4a1c87c057c4" "d74c5485d42ca4b7f3092e50db687600d0e16006d8fa335c69cf4f379dbd0eee" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "9efb2d10bfb38fe7cd4586afb3e644d082cbcdb7435f3d1e8dd9413cbe5e61fc" "2a749c20af891c16571527d07976bbcf2bf31819fa7d322942b73386019f4d58" "6177ecbffb8f37756012c9ee9fd73fc043520836d254397566e37c6204118852" "34b3219ae11acd81b2bb7f3f360505019f17d7a486deb8bb9c1b6d13c6616d2e" "9b272154fb77a926f52f2756ed5872877ad8d73d018a426d44c6083d1ed972b1" "e2acbf379aa541e07373395b977a99c878c30f20c3761aac23e9223345526bcc" "632694fd8a835e85bcc8b7bb5c1df1a0164689bc6009864faed38a9142b97057" "a92e9da0fab90cbec4af4a2035602208cebf3d071ea547157b2bfc5d9bd4d48d" "3d3807f1070bb91a68d6638a708ee09e63c0825ad21809c87138e676a60bda5d" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "d71aabbbd692b54b6263bfe016607f93553ea214bc1435d17de98894a5c3a086" "3577ee091e1d318c49889574a31175970472f6f182a9789f1a3e9e4513641d86" "9b01a258b57067426cc3c8155330b0381ae0d8dd41d5345b5eddac69f40d409b" "fe94e2e42ccaa9714dd0f83a5aa1efeef819e22c5774115a9984293af609fce7" "bc836bf29eab22d7e5b4c142d201bcce351806b7c1f94955ccafab8ce5b20208" "71e5acf6053215f553036482f3340a5445aee364fb2e292c70d9175fb0cc8af7" "912cac216b96560654f4f15a3a4d8ba47d9c604cbc3b04801e465fb67a0234f0" "5846b39f2171d620c45ee31409350c1ccaddebd3f88ac19894ae15db9ef23035" default)))
 '(display-time-mode t)
 '(ede-project-directories (quote ("/home/jeka/Workspace/gpp_j/src")))
 '(ensime-sem-high-faces
   (quote
    ((var :foreground "#9876aa" :underline
          (:style wave :color "yellow"))
     (val :foreground "#9876aa")
     (varField :slant italic)
     (valField :foreground "#9876aa" :slant italic)
     (functionCall :foreground "#a9b7c6")
     (implicitConversion :underline
                         (:color "#808080"))
     (implicitParams :underline
                     (:color "#808080"))
     (operator :foreground "#cc7832")
     (param :foreground "#a9b7c6")
     (class :foreground "#4e807d")
     (trait :foreground "#4e807d" :slant italic)
     (object :foreground "#6897bb" :slant italic)
     (package :foreground "#cc7832")
     (deprecated :strike-through "#a9b7c6"))))
 '(fci-rule-color "#888395")
 '(global-display-line-numbers-mode t)
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f"))))
 '(indent-tabs-mode nil)
 '(jdee-db-active-breakpoint-face-colors (cons "#222228" "#819cd6"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#222228" "#5b94ab"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#222228" "#515462"))
 '(menu-bar-mode nil)
 '(objed-cursor-color "#e1c1ee")
 '(package-selected-packages
   (quote
    (projectile phpactor php-mode ede-compdb ede-php-autoload-composer-installers ede-php-autoload evil-magit magit xah-fly-keys cloud-theme evil-leader yafolding company-c-headers go-dlv go-guru go-direx go-scratch gotest multi-compile go-rename company-go go-eldoc go-mode spacemacs-theme eclipse-theme darcula-theme cargo quick-peek flycheck-inline exwm treemacs-evil treemacs flycheck-rust flycheck fzf company racer doom-themes doom-modeline monokai-pro-theme dumb-jump sr-speedbar geben ac-php php-eldoc phpstan company-phpactor company-php evil-collection evil)))
 '(pdf-view-midnight-colors (cons "#c6c6c6" "#282b33"))
 '(rustic-ansi-faces
   ["#282b33" "#e1c1ee" "#5b94ab" "#cfcf9c" "#819cd6" "#a6c1e0" "#7289bc" "#c6c6c6"])
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-auto-refresh nil)
 '(sr-speedbar-show-unknown-files t)
 '(tab-stop-list
   (quote
    (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120)))
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#282b33")
 '(vc-annotate-color-map
   (list
    (cons 20 "#5b94ab")
    (cons 40 "#81a7a6")
    (cons 60 "#a8bba1")
    (cons 80 "#cfcf9c")
    (cons 100 "#c1cab2")
    (cons 120 "#b3c5c9")
    (cons 140 "#a6c1e0")
    (cons 160 "#a6c1e0")
    (cons 180 "#a6c1e0")
    (cons 200 "#a6c1e0")
    (cons 220 "#b9c1e4")
    (cons 240 "#cdc1e9")
    (cons 260 "#e1c1ee")
    (cons 280 "#bda5cb")
    (cons 300 "#998aa8")
    (cons 320 "#756f85")
    (cons 340 "#888395")
    (cons 360 "#888395")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 143 :width normal))))
 '(whitespace-tab ((t (:foreground "#636363")))))

;; START Emacs server
(server-start)

(setq-default electric-indent-inhibit t)
(global-whitespace-mode)
(setq whitespace-style '(face tabs tab-mark trailing))

(setq whitespace-display-mappings
  '((tab-mark 9 [124 9] [92 9])))

(setq frame-resize-pixelwise t)
(evil-mode t)
(global-evil-leader-mode t)
(evil-define-key 'insert 'global (kbd "C-h") 'delete-backward-char)
(when (require 'evil-collection nil t)
   (evil-collection-init))
(setq evil-magit-state 'motion)
(linum-mode t)
(global-company-mode t)
(highlight-parentheses-mode t)
(doom-modeline-mode t)
(global-company-mode t)
(global-flycheck-mode t)
(yafolding-mode t)
(evil-leader/set-key "ff" 'yafolding-toggle-element)

(with-eval-after-load 'flycheck
  (add-hook 'flycheck-mode-hook #'flycheck-inline-mode))
(setq flycheck-inline-display-function
      (lambda (msg pos)
        (let* ((ov (quick-peek-overlay-ensure-at pos))
               (contents (quick-peek-overlay-contents ov)))
          (setf (quick-peek-overlay-contents ov)
                (concat contents (when contents "\n") msg))
          (quick-peek-update ov)))
      flycheck-inline-clear-function #'quick-peek-hide)
;;(setq flycheck-inline-mode t)

(global-flycheck-inline-mode t)

(setq dumb-jump-prefer-searcher 'rg)

(global-set-key (kbd "C-SPC") 'ibuffer)


;; PHP
;; company
;; company-phpactor
;; flycheck
;; flycheck-inline
;; phpactor
;; smart-jump
;; yafolding
(add-hook 'php-mode-hook
          (lambda ()
            (set (make-local-variable 'company-backends)
                 '(company-phpactor
                   company-files))
            (make-local-variable 'eldoc-documentation-function)
            (setq eldoc-documentation-function
                  'phpactor-hover)))
(with-eval-after-load 'php-mode
  (phpactor-smart-jump-register))
;; (define-transient-command php-transient-menu ()
;;   "Php"
;;   [["Class"
;;     ("cc" "Copy" phpactor-copy-class)
;;     ("cn" "New" phpactor-create-new-class)
;;     ("cr" "Move" phpactor-move-class)
;;     ("ci" "Inflect" phpactor-inflect-class)
;;     ("n"  "Namespace" phpactor-fix-namespace)]
;;    ["Properties"
;;     ("a"  "Accessor" phpactor-generate-accessors)
;;     ("pc" "Constructor" phpactor-complete-constructor)
;;     ("pm" "Add missing props" phpactor-complete-properties)
;;     ("r" "Rename var locally" phpactor-rename-variable-local)
;;     ("R" "Rename var in file" phpactor-rename-variable-file)]
;;   ["Extract"
;;     ("ec" "constant" phpactor-extract-constant)
;;     ("ee" "expression" phpactor-extract-expression)
;;     ("em"  "method" phpactor-extract-method)]
;;   ["Methods"
;;     ("i" "Implement Contracts" phpactor-implement-contracts)
;;     ("m"  "Generate method" phpactor-generate-method)]
;;   ["Navigate"
;;     ("x" "List refs" phpactor-list-references)
;;     ("X" "Replace refs" phpactor-replace-references)
;;     ("."  "Goto def" phpactor-goto-definition)]
;;   ["Phpactor"
;;     ("s" "Status" phpactor-status)
;;     ("u" "Install" phpactor-install-or-update)]])

;; END PHP

;; Rust
(add-hook 'rust-mode-hook
	  '(lambda ()
	     ;;(flycheck-mode t)
	     (flycheck-select-checker 'rust)
	     (eldoc-mode t)
	     (setq company-dabbrev-downcase 0)
	     (setq company-idle-delay 0)
	     (setq company-tooltip-align-annotations t)
	     (racer-mode t)))
;; (add-hook 'rust-mode-hook #'racer-mode)
;; (add-hook 'racer-mode-hook #'eldoc-mode)
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

;; Go-language
(setq-default gofmt-command "goimports")
(add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'go-mode-hook 'yas-minor-mode)
(add-hook 'go-mode-hook 'flycheck-mode)
(add-hook 'go-mode-hook #'go-guru-hl-identifier-mode)
(add-hook 'go-mode-hook (lambda ()
			  (add-hook 'before-save-hook 'gofmt-before-save)
			  (set (make-local-variable 'company-backends) '(company-go))
			  (company-mode)))

(setq multi-compile-alist '(
    (go-mode . (
("go-build" "go build -v"
   (locate-dominating-file buffer-file-name ".git"))
("go-build-and-run" "go build -v && echo 'build finish' && eval ./${PWD##*/}"
   (multi-compile-locate-file-dir ".git"))))
    ))


;; C-lang
(add-hook 'c-mode-hook
          '(lambda ()
             (add-to-list 'company-backends 'company-c-headers)))
