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
    fic-mode
    emmet-mode
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
 '(custom-enabled-themes '(sitaramv-nt))
 '(custom-safe-themes
   '("654b365467a92ff70c70f4926974e07dcdb34805d2787c51710b467e695342e6" "a4ef58c2fb31b065ad09fa3029adba5eb518e42ef104cf9acf7c409abf40ca55" "8c867d38498653a86c1071714502d01eabb8d8c9ec976a7ddc4d04c23a991a97" "39a854967792547c704cbff8ad4f97429f77dfcf7b3b4d2a62679ecd34b608da" "10551f0a24d0ac97a109f02178e9e34b448ee12a52357911cf3362a6b249cae6" "dd7213b37f448685f41e28b83a497f78fdefeeef0d47531fc24e99f576a7a191" "34c1b320a9d35318ca01660d533eee299d538f5a0c505c076511493b0a4f093d" "69ad4071c7b2d91543fddd9030816404ff22e46f7207549319ce484e23082dee" "8e5f723fc78532cfe9d76fd804dcd05ed5ea1eeea65507e25723b9e5934b1cbd" "6a2cc07c407e8321f0df155988e60b39fe6f2488d2c79a6b14211854ea6fbc52" "cdc2a7ba4ecf0910f13ba207cce7080b58d9ed2234032113b8846a4e44597e41" "7de92d9e450585f9f435f2d9b265f34218cb235541c3d0d42c154bbbfe44d4dd" "317a45f190eaa3ccf8af6168aa89112d9cb794f87f409bc7a0638edee20d07fd" "0ea5731605469a81203311ad7b4b3db03d6d7249ce621e3f2793ae3613d165ed" "06e0662b31a2ae8da5c6b5e9a05b25fabd1dc8dd3c3661ac194201131cafb080" "77a70a104f0eefd1bade76d53ba6cadfbb6c87eeb9f358acd85d6c5ce9aa02d6" "b71da830ae97a9b70d14348781494b6c1099dbbb9b1f51494c3dfa5097729736" "46f6f73fb47a2a19b6ee1a49781f835fd73a185674268d4e048acf6feac9c55d" "701b4b4e7989329a0704b92fc17e6600cc18f9df4f2466617ec91c932b5477eb" "aa9834b2ccf220220504aa4d0f6513ce9124a939c73586ad623565f7b3bbffb3" "8310462f5008fe10661e27ceab164e05c509343641cc262134fc623422b5999d" "0a8b65f747471394d1539ba19722f7ac733b5d1d9419a83f2b3eb9e9a1443aa9" "74c7fb40d06ce63839f61695301363533eca789c2f057c50e21e295c4e96ce74" "ec38d891ab6805f112b47c18149190a50bf1e2967b6e9fc84453989b6f67b2f6" "42d116236094bbb32033705237877aa3e83d436649c92e541e941347f0a7e605" "c51e302edfe6d2effca9f7c9a8a8cfc432727efcf86246002a3b45e290306c1f" "d422c7673d74d1e093397288d2e02c799340c5dabf70e87558b8e8faa3f83a6c" "cc2f32f5ee19cbd7c139fc821ec653804fcab5fcbf140723752156dc23cdb89f" "1048305cc1ac0f9088768641fb1c64756ee82b9d0b088b2950f6bae961dccc19" "499c3dd62c262b0bbb3ea0f5c83e92db5eac4a2a58468b51900e0ca706a7ad12" "271d9389c0256fa7df2bbb6b5fd304d08bd6178371f46159d963621669e8c203" "be2c1a78f42783eab9ff068c3f09e81a7908a77a1d288ce8d704491165ef448b" "ded82bed6a96cb8fdc7a547ef148679e78287664a5236e9c694e917383b052d7" "e3d4bc76062df5a4b72d0ec8abd04233ea3d33a8418430a719bd533e0e7c36ee" "2ea9afebc23cca3cd0cd39943b8297ce059e31cb62302568b8fa5c25a22db5bc" "c29d6bc4bb6ee61149ce0fce6bc2bea539dcab11f0fb7bb0f1e2d8f5fb817a8e" "14afbe72aeadc67fb3061ddaaaad924c58b45dc6c604fa31675222d851b70161" "45482e7ddf47ab1f30fe05f75e5f2d2118635f5797687e88571842ff6f18b4d5" "dbcaaf13f0d62b577dedefe6e1a9ae3e57ac86f316fea6ae83341db916fcb9c7" "57db540d6a8cc20d2e2f20bd63dc3af4eb9e4bbfa7252a0ee877c99b577996c4" "7c83927617afdf71cc90801ffee5965939505b7cfecdcbe15961fc32a0d9bd02" "026eff18f1c0fda8f9bf5738343019a8ebe8db55c1bd9bcbd4536d8ed112d5df" "9a4b5a8dfe01489c7046f75764c988a8a93aeb36e48c39dc55f21fb3ecbf2c59" "5e769f0dc4c262f216c2a30ca8bf55ff2ebc164f779bd2f32ce989290dc13485" "dd8223836a1a1576a8e9e7e1d19a894dce45e0f1a5498b5aecf0ccef3bec8b90" "0f302165235625ca5a827ac2f963c102a635f27879637d9021c04d845a32c568" "be0efbaebc85494f3c1c06e320fd13a24abf485d5f221a90fe811cea9a39ed85" "fbe90e506c7bbc25eb1cbfce3bcd90a2bec9fe09ecfdf7302fc8705d43a39fcd" "1866ad9491a157007f89c14ceb54dfd04d8c1b5015132c79975331276eefef50" "c02b12444e027c332e58a7fb46ffd870df9e00123fd61e675288439b22c3c2a1" "c3fa63eab93d1f0b4bf9f60a98a2848ba29c34cc6f2ef5cf4076d9c190a47a6c" "5c5de678730ceb4e05794431dd65f30ffe9f1ed6c016fa766cdf909ba03e4df4" "0ec7094cc0a201c1d6f7c37f2414595d6684403b89b6fd74dcc714b5d41cd338" "087af241cc83130395244db7fca84b545fef75da92d63462436f3ffef916fa33" "41a5a10e5221572b54c478eba62b51c510277100c9553d198fb1f4d56c45c6da" "011d4421eedbf1a871d1a1b3a4d61f4d0a2be516d4c94e111dfbdc121da0b043" "e737ca3fb6767587a5e3fb066ec11f216f62faa2f64d18ae3b8c362c274ed2c8" "9987adb99037db4fca049c26ab751370b37b7a84c458d8f11f6590d5a02e97d5" "922f930fc5aeec220517dbf74af9cd2601d08f8250e4a15c385d509e22629cac" "9493b7c662667d7a2f2bf80390d88f549e1e253f3f647be575d9f29b215ef2c6" "9568c83e0af1d7a992c37411ace790036735a26c484531bf77690adf2c5d3e8b" "6c0d748fb584ec4c8a0a1c05ce1ae8cde46faff5587e6de1cc59d3fc6618e164" "6ad45ae62cb64d84c6febbe85e3da7b3e68e65383e1a333578cabe5398d3109a" "bd28a7a54d9bfbda4456afb650a5990282b391f1e0494fb04b095981255066ae" "20ad8133a73088c0ce4f26d106c3e70cae4e10c7e613c9b9e17a962eb194a24f" "047ec205dcb5edbb94b35800110150a6e41e6cc92c0ccfb2ed25ac3df94331a6" "b5cff93c3c6ed12d09ce827231b0f5d4925cfda018c9dcf93a2517ce3739e7f1" "e6e07c74bee845f48da5f46843a241d71d4ee3bf945fb506c05a08e5c872df3e" "5f4dfda04fbf7fd55228266c8aab73953d3087cea7fd06dd7f8ff1e4a497c739" "e006d90eaf64a2d78154ecb277ccc82327e1b975d7d0e2f933acca3131cd0177" "d86ddb4126c19487edd10a0f1a16f77fdaadafbdac9f4fcd695cf1c0a215117b" "64affc3597b4271ba6b0b428777d616cfb20d8f7f147dbd00f1de220b2b59bbf" "4ca84f9861113f889d505b66c4a9c30b81400f450b54f4c857d3eb44c5bdc601" "1ba950bff674dd0e08edeb8b8f83ee338bbef0bc769349ed38de10854927e487" "aad7fd3672aad03901bf91e338cd530b87efc2162697a6bef79d7f8281fd97e3" "b80d4f6dee7691fc5a437d760164c3eba202944b3f977d5b47bbb6b76cba0806" "69ecb7a75a0a8440df4b9ffe28b46dadf849b499c7e10680c26b99a84df773ca" "d1b30c69aaf27807108e358b08c6aec4759d7240bc530fca90fd5833813fbc84" "32b75b124f7f84517d3803a13a807189bae717b9d28e68e5a327a8ba55b7a6ee" "57d7e8b7b7e0a22dc07357f0c30d18b33ffcbb7bcd9013ab2c9f70748cfa4838" "c2bce71b37ffd6e95fbd3b98d6eaadd113ec308f85149cfc8f50dee716764fed" "9939e735844cb24144d29ddf03fadf86a2d455758afeeee30372258e8a6401bb" "3d9df5511048d0815b1ccc2204cc739117c1a458be92fb26c03451149a1b1c11" "39f0ac86b012062fed46469cc5ea1b00aa534db587ad21d55a9717a1bac99a27" "4c8372c68b3eab14516b6ab8233de2f9e0ecac01aaa859e547f902d27310c0c3" "6213a6047cc19f580c37ef3f6d47fd5a55ebdf9b5590475d8f7a6aecd79a1cc0" "1a094b79734450a146b0c43afb6c669045d7a8a5c28bc0210aba28d36f85d86f" "5516001c13a43f1f5be2d7df8035445f8d7c73179f637e40c1503afb184d98f2" "ef92efb0f9178b4a1130ffae1571d71983d123f84acd6565e09cb58ca71982c9" "6e03b7f86fcca5ce4e63cda5cd0da592973e30b5c5edf198eddf51db7a12b832" "67b11ee5d10f1b5f7638035d1a38f77bca5797b5f5b21d16a20b5f0452cbeb46" "3fe4861111710e42230627f38ebb8f966391eadefb8b809f4bfb8340a4e85529" "58ef0d9d877d9b1c19183f4215de272fa2938744f077e3a69ea12b8b6e852155" "d9c957b0e8d2d7f1bbb781fc729e06598017ade2d0c18611e5abbdde0f65d981" "1319bfcf42cefb12fad274e5763d0eae0d0401cddc9738bdf220fe89447e9292" "0c5204945ca5cdf119390fe7f0b375e8d921e92076b416f6615bbe1bd5d80c88" "294c4b6a955149c93945f901a284140df29963a57939e9ed2fc4ad79b3605080" "e624f013e266f41148aa2e445a4b8681b0afb346a9126993e345309c9a829535" "0615f6940c6c5e5638c9157644263889db755d43576c25f7b311806f4cfe2c3a" "dbade2e946597b9cda3e61978b5fcc14fa3afa2d3c4391d477bdaeff8f5638c5" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "a5d04a184d259f875e3aedbb6dbbe8cba82885d66cd3cf9482a5969f44f606c0" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
 '(fci-rule-color "#FFFFF8")
 '(package-selected-packages
   '(color-theme-modern tao-theme emmet-mode yasnippet-snippets magit ede-php-autoload php-eldoc eldoc yasnippet lsp-ui company-lsp lsp-mode php-quickhelp php-mode))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#FFFFFD")
 '(vc-annotate-color-map
   '((20 . "#D5D2C8")
     (40 . "#B0ADA2")
     (60 . "#B0ADA2")
     (80 . "#737063")
     (100 . "#737063")
     (120 . "#4E4B3D")
     (140 . "#4E4B3D")
     (160 . "#373426")
     (180 . "#373426")
     (200 . "#373426")
     (220 . "#292617")
     (240 . "#292617")
     (260 . "#292617")
     (280 . "#201D0E")
     (300 . "#201D0E")
     (320 . "#201D0E")
     (340 . "#1B1809")
     (360 . "#1B1809")))
 '(vc-annotate-very-old-color "#4E4B3D"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
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
(add-hook 'vue-mode-hook #'emmet-mode)
(add-hook 'vue-mode-hook
          (lambda ()
            (set-face-background 'mmm-default-submode-face nil)))
(add-hook 'vue-mode-hook #'fic-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
