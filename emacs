;; PARAMS BEFORE REQUIRE PACKAGES
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
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes '(doom-dark+))
 '(custom-safe-themes
   '("8be07a2c1b3a7300860c7a65c0ad148be6d127671be04d3d2120f1ac541ac103" "b6493078dc17528c57a3eb6b334e496217d026d856261b349603c9845f3cf2d8" "bedf9d7697f95381074fb2f02f417915b03a1c78ce207445a3a2178d44e36887" "5b61f8b18975a8c280d495cc2dcd39784cbecf6f0736c623b8cd55beb2fb4629" "aded4ec996e438a5e002439d58f09610b330bbc18f580c83ebaba026bbef6c82" "87d46d0ad89557c616d04bef34afd191234992c4eb955ff3c60c6aa3afc2e5cc" "fede08d0f23fc0612a8354e0cf800c9ecae47ec8f32c5f29da841fe090dfc450" "39b4cfc179c8e97489f028bfce47a1fd81afdb4fc97bde9dbe5e1309253abfe5" "7a1190ad27c73888f8d16142457f59026b01fa654f353c17f997d83565c0fc65" "f6f5d5adce1f9a764855c9730e4c3ef3f90357313c1cae29e7c191ba1026bc15" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "196df8815910c1a3422b5f7c1f45a72edfa851f6a1d672b7b727d9551bb7c7ba" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "8f5b54bf6a36fe1c138219960dd324aad8ab1f62f543bed73ef5ad60956e36ae" "4bf5c18667c48f2979ead0f0bdaaa12c2b52014a6abaa38558a207a65caeb8ad" "c7a3537791082bfbfb44091bef32d20a18e992d5da0198bf8d8363221cca5b01" "ed49a2f0e2f329308a17a0d9ecdbe7dc05d440554f0e7bfd1497778f8ffde877" "b8929cff63ffc759e436b0f0575d15a8ad7658932f4b2c99415f3dde09b32e97" "aea30125ef2e48831f46695418677b9d676c3babf43959c8e978c0ad672a7329" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "36282815a2eaab9ba67d7653cf23b1a4e230e4907c7f110eebf3cdf1445d8370" "cf922a7a5c514fad79c483048257c5d8f242b21987af0db813d3f0b138dfaf53" "d6844d1e698d76ef048a53cefe713dbbe3af43a1362de81cdd3aefa3711eae0d" "4133d2d6553fe5af2ce3f24b7267af475b5e839069ba0e5c80416aa28913e89a" "1278c5f263cdb064b5c86ab7aa0a76552082cf0189acf6df17269219ba496053" "0466adb5554ea3055d0353d363832446cd8be7b799c39839f387abb631ea0995" "6b1abd26f3e38be1823bd151a96117b288062c6cde5253823539c6926c3bb178" "e6a2832325900ae153fd88db2111afac2e20e85278368f76f36da1f4d5a8151e" "c3e6b52caa77cb09c049d3c973798bc64b5c43cc437d449eacf35b3e776bf85c" "aa6638f0cd2ba2c68be03220ea73495116dc6f0b625405ede34087c1babb71ae" "a6473f7abf949f4a6a1a9cc0dd37ea2e35ba3cea65d3442b98d65c5c5c5cb8d7" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "1025e775a6d93981454680ddef169b6c51cc14cea8cb02d1872f9d3ce7a1da66" "fe15a6144a4f91dbd136c9d2ca74b1e13f502ac5c0b8a35d7daa2a97d2eabd29" "9ce93c9eb0f26697eadc71afb99214fa2c85396f6148ddabf5a8319e667513ae" "264b639ee1d01cd81f6ab49a63b6354d902c7f7ed17ecf6e8c2bd5eb6d8ca09c" "e1498b2416922aa561076edc5c9b0ad7b34d8ff849f335c13364c8f4276904f0" "808b47c5c5583b5e439d8532da736b5e6b0552f6e89f8dafaab5631aace601dd" "5a39d2a29906ab273f7900a2ae843e9aa29ed5d205873e1199af4c9ec921aaab" "ef403aa0588ca64e05269a7a5df03a5259a00303ef6dfbd2519a9b81e4bce95c" "a62f0662e6aa7b05d0b4493a8e245ab31492765561b08192df61c9d1c7e1ddee" "819d24b9aba8fcb446aecfb59f87d1817a6d3eb07de7fdec67743ef32194438b" "b67b2279fa90e4098aa126d8356931c7a76921001ddff0a8d4a0541080dee5f6" "a61109d38200252de49997a49d84045c726fa8d0f4dd637fce0b8affaa5c8620" "ea6fd1ecc660fb434e19ed6b6d193bd25670bfcb6a955dfa21662da90184ba0c" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "9687f29504a36c0b6b46cf654117f2f2ab3e73b909476ccb14cdde2bf990fa3e" "f6665ce2f7f56c5ed5d91ed5e7f6acb66ce44d0ef4acfaa3a42c7cfe9e9a9013" "5f19cb23200e0ac301d42b880641128833067d341d22344806cdad48e6ec62f6" "47db50ff66e35d3a440485357fb6acb767c100e135ccdf459060407f8baea7b2" "da53441eb1a2a6c50217ee685a850c259e9974a8fa60e899d393040b4b8cc922" "52498cb107fb252e92ac35b8a5eba466fede7f03bebcf50412190c452ed7329e" "4b6b6b0a44a40f3586f0f641c25340718c7c626cbf163a78b5a399fbe0226659" "b5803dfb0e4b6b71f309606587dd88651efe0972a5be16ece6a958b197caeed8" "266ecb1511fa3513ed7992e6cd461756a895dcc5fef2d378f165fed1c894a78c" "cbdf8c2e1b2b5c15b34ddb5063f1b21514c7169ff20e081d39cf57ffee89bc1e" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" "6c386d159853b0ee6695b45e64f598ed45bd67c47f671f69100817d7db64724d" "a0be7a38e2de974d1598cf247f607d5c1841dbcef1ccd97cded8bea95a7c7639" "4b0e826f58b39e2ce2829fab8ca999bcdc076dec35187bf4e9a4b938cb5771dc" "d0fd069415ef23ccc21ccb0e54d93bdbb996a6cce48ffce7f810826bb243502c" "44961a9303c92926740fc4121829c32abca38ba3a91897a4eab2aa3b7634bed4" "1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "93268bf5365f22c685550a3cbb8c687a1211e827edc76ce7be3c4bd764054bad" "100eeb65d336e3d8f419c0f09170f9fd30f688849c5e60a801a1e6addd8216cb" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "7bef2d39bac784626f1635bd83693fae091f04ccac6b362e0405abf16a32230c" "846b3dc12d774794861d81d7d2dcdb9645f82423565bfb4dad01204fa322dbd5" "00c5138bb71c95ca37a0fc845656498a8b4ff271ba4e0e0845732d188359d55a" "a85e40c7d2df4a5e993742929dfd903899b66a667547f740872797198778d7b5" "eae831de756bb480240479794e85f1da0789c6f2f7746e5cc999370bbc8d9c8a" "d583e413c94b50882768e499db73059969617344935753c92c8a0b6323e701b9" "bcfc77fcc3e012941eb47d5037f0fac767e23fd2dae039214e5fa856ac8bdfdd" "68c6d3938398ff6f2f28643ac839502668bb93186336eac8241b54c7c846dde4" "d83e34e28680f2ed99fe50fea79f441ca3fddd90167a72b796455e791c90dc49" "ad16a1bf1fd86bfbedae4b32c269b19f8d20d416bd52a87cd50e355bf13c2f23" "2a998a3b66a0a6068bcb8b53cd3b519d230dd1527b07232e54c8b9d84061d48d" "3be1f5387122b935a26e02795196bc90860c57a62940f768f138b02383d9a257" "c614d2423075491e6b7f38a4b7ea1c68f31764b9b815e35c9741e9490119efc0" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "cbd85ab34afb47003fa7f814a462c24affb1de81ebf172b78cb4e65186ba59d2" "d2bd16a8bcf295dce0b70e1d2b5c17bb34cb28224a86ee770d56e6c22a565013" "ee10794cb2deb2e0dc094145980d518661cc5092769192153ae8bdbd24fba3fc" "1ac48c0de33d69da64e756db9c4c362429c09cfebbff5229431e6ee726aca3c0" "1bb8f76bcd04a2b25a663a3da69235fbdbe9db1d5fe7efc6e8fcfc5e1030c9c3" "cfb7f51dcfd7a42080fce44babd015f6148524427dea0d27935876880105a391" "b38178d720f5349ec758490781471daa1048619e9ff04a9850234cc3dfcb6ad6" "f8484793c97806a5ae303807ee9ba291db59c52dd695f04777272facb5594475" "60e09d2e58343186a59d9ed52a9b13d822a174b33f20bdc1d4abb86e6b17f45b" "99c86852decaeb0c6f51ce8bd46e4906a4f28ab4c5b201bdc3fdf85b24f88518" "ecd8267ae99aa12d766f37bea093a6a3e3138494416956dcad29182e0fad69f8" "94660e5af9ca9d8b22139e5832869959048df22f554408aef239b275ba01d943" "15e73942e742d19654b30515d908a226eb709b7a5622d0a057b5ae290e3e4219" "64e3f7a494ad5491dea52e49253ee807be7799a4758822725fe29682abfe0cf7" "c9f102cf31165896631747fd20a0ca0b9c64ecae019ce5c2786713a5b7d6315e" "d9850d120be9d94dd7ae69053630e89af8767c36b131a3aa7b06f14007a24656" "80930c775cef2a97f2305bae6737a1c736079fdcc62a6fdf7b55de669fbbcd13" "350dc341799fbbb81e59d1e6fff2b2c8772d7000e352a5c070aa4317127eee94" "d96587ec2c7bf278269b8ec2b800c7d9af9e22d816827639b332b0e613314dfd" "23ba4b4ba4d1c989784475fed58919225db8d9a9751b32aa8df835134fe7ba6f" "68fb87a1805393d7a00ba5064d28b8277de5a75addf0d34094012408cfcf2eea" "fec45178b55ad0258c5f68f61c9c8fd1a47d73b08fb7a51c15558d42c376083d" "8cf1002c7f805360115700144c0031b9cfa4d03edc6a0f38718cef7b7cabe382" "36746ad57649893434c443567cb3831828df33232a7790d232df6f5908263692" "888d95cf0e20998aef15a04969bedef99baa889053108d61e20f643e651d145a" "c25d5ef5851d3036897e21f66d26bc1fa2a5ba89dbd15540604884a2fd163cc1" "146061a7ceea4ccc75d975a3bb41432382f656c50b9989c7dc1a7bb6952f6eb4" "d47f868fd34613bd1fc11721fe055f26fd163426a299d45ce69bef1f109e1e71" "9f9fc38446c384a4e909b7220d15bf0c152849ef42f5b1b97356448612c77953" "3d54650e34fa27561eb81fc3ceed504970cc553cfd37f46e8a80ec32254a3ec3" "1f50a7274cd56f28713e1694600ec7b8f2fd1c7d2ef38c5e7378a26931605409" "26e07f80888647204145085c4fed78e0e6652901b62a25de2b8372d71de9c0a1" "22a514f7051c7eac7f07112a217772f704531b136f00e2ccfaa2e2a456558d39" "f302eb9c73ead648aecdc1236952b1ceb02a3e7fcd064073fb391c840ef84bca" "d268b67e0935b9ebc427cad88ded41e875abfcc27abd409726a92e55459e0d01" "850bb46cc41d8a28669f78b98db04a46053eca663db71a001b40288a9b36796c" "88f59acbeacefb4998f45126d4d8ae8b2184f2a48753db362a349fd55321c7e1" "a7b20039f50e839626f8d6aa96df62afebb56a5bbd1192f557cb2efb5fcfb662" "fe2539ccf78f28c519541e37dc77115c6c7c2efcec18b970b16e4a4d2cd9891d" "1a52e224f2e09af1084db19333eb817c23bceab5e742bf93caacbfea5de6b4f6" "a6e620c9decbea9cac46ea47541b31b3e20804a4646ca6da4cce105ee03e8d0e" "8146edab0de2007a99a2361041015331af706e7907de9d6a330a3493a541e5a6" "b0e446b48d03c5053af28908168262c3e5335dcad3317215d9fdeb8bac5bacf9" "6f4421bf31387397f6710b6f6381c448d1a71944d9e9da4e0057b3fe5d6f2fad" "4a5aa2ccb3fa837f322276c060ea8a3d10181fecbd1b74cb97df8e191b214313" "e19ac4ef0f028f503b1ccafa7c337021834ce0d1a2bca03fcebc1ef635776bea" "e8df30cd7fb42e56a4efc585540a2e63b0c6eeb9f4dc053373e05d774332fc13" "5aef652e40fa5f111e78997285f6e4c892112da0c2f919eb663baaa330a8521f" "b186688fbec5e00ee8683b9f2588523abdf2db40562839b2c5458fcfb322c8a4" "b7e460a67bcb6cac0a6aadfdc99bdf8bbfca1393da535d4e8945df0648fa95fb" "97db542a8a1731ef44b60bc97406c1eb7ed4528b0d7296997cbb53969df852d6" "0b3aee906629ac7c3bd994914bf252cf92f7a8b0baa6d94cb4dfacbd4068391d" "6e14157d0c8857e81035e6c7131dc17e4115b3911c82a1fd32e528aec8e89eab" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "9ac11c78f208abf58e5b313a33147cbf209ad9dc9cb169bf82464b043b45ad7a" "f08d2081f6783a5712cdce418f3962bd97a2054e8960609aad53f013a8b6f1cc" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "dc8ad8b5833ae06e373cc3d64be28e67e6c3d084ea5f0e9e77225b3badbec661" "e7ba99d0f4c93b9c5ca0a3f795c155fa29361927cadb99cfce301caf96055dfd" "6cf0e8d082a890e94e4423fc9e222beefdbacee6210602524b7c84d207a5dfb5" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "b375fc54d0c535bddc2b8012870008055bf29d70eea151869e6ad7aaaadb0d24" "56d10d2b60685d112dd54f4ba68a173c102eacc2a6048d417998249085383da1" "d6fd0b33ae1f7a0fa7c407f18997adb0ba2fa73dbf847b0b94bfd51eb376add3" "70936e3b54ca6d668354fdc87eea5f0a5129380c0c459598be943efba6ae1563" "0710b0bdd59c8a7aacf0640591b38fcad5978a0fcfff3fdd999e63499ada8e3e" "09feeb867d1ca5c1a33050d857ad6a5d62ad888f4b9136ec42002d6cdf310235" "d6603a129c32b716b3d3541fc0b6bfe83d0e07f1954ee64517aa62c9405a3441" "ff8be9ed2696bf7bc999423d909a603cb23a9525bb43135c0d256b0b9377c958" "a0d9281cf41e8a226f0539a7f54e4812fdeaaec36c751b84671df97a54013465" "ca70827910547eb99368db50ac94556bbd194b7e8311cfbdbdcad8da65e803be" "21055a064d6d673f666baaed35a69519841134829982cbbb76960575f43424db" "c0a0c2f40c110b5b212eb4f2dad6ac9cac07eb70380631151fa75556b0100063" "2c613514f52fb56d34d00cc074fe6b5f4769b4b7f0cc12d22787808addcef12c" "3325e2c49c8cc81a8cc94b0d57f1975e6562858db5de840b03338529c64f58d1" "d916b686ba9f23a46ee9620c967f6039ca4ea0e682c1b9219450acee80e10e40" "f0beb93ad5e34b1a95519aa5db69a6d4135346c28a085c832ee3a0fb5e9fcdf3" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "8f5a7a9a3c510ef9cbb88e600c0b4c53cdcdb502cfe3eb50040b7e13c6f4e78e" "f4876796ef5ee9c82b125a096a590c9891cec31320569fc6ff602ff99ed73dca" "4f01c1df1d203787560a67c1b295423174fd49934deb5e6789abd1e61dba9552" "b5fff23b86b3fd2dd2cc86aa3b27ee91513adaefeaa75adc8af35a45ffb6c499" "fce3524887a0994f8b9b047aef9cc4cc017c5a93a5fb1f84d300391fba313743" "5b809c3eae60da2af8a8cfba4e9e04b4d608cb49584cb5998f6e4a1c87c057c4" "0fe24de6d37ea5a7724c56f0bb01efcbb3fe999a6e461ec1392f3c3b105cc5ac" "d74c5485d42ca4b7f3092e50db687600d0e16006d8fa335c69cf4f379dbd0eee" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "0a41da554c41c9169bdaba5745468608706c9046231bbbc0d155af1a12f32271" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "aaa4c36ce00e572784d424554dcc9641c82d1155370770e231e10c649b59a074" "95d0ed21bb0e919be7687a25ad59a1c2c8df78cbe98c9e369d44e65bfd65b167" "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "7a994c16aa550678846e82edc8c9d6a7d39cc6564baaaacc305a3fdc0bd8725f" "6b80b5b0762a814c62ce858e9d72745a05dd5fc66f821a1c5023b4f2a76bc910" "6c3b5f4391572c4176908bb30eddc1718344b8eaff50e162e36f271f6de015ca" "08a27c4cde8fcbb2869d71fdc9fa47ab7e4d31c27d40d59bf05729c4640ce834" "7b3d184d2955990e4df1162aeff6bfb4e1c3e822368f0359e15e2974235d9fa8" "54cf3f8314ce89c4d7e20ae52f7ff0739efb458f4326a2ca075bf34bc0b4f499" "7546a14373f1f2da6896830e7a73674ef274b3da313f8a2c4a79842e8a93953e" "0e2a7e1e632dd38a8e0227d2227cb8849f877dd878afb8219cb6bcdd02068a52" "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "93ed23c504b202cf96ee591138b0012c295338f38046a1f3c14522d4a64d7308" "3c2f28c6ba2ad7373ea4c43f28fcf2eed14818ec9f0659b1c97d4e89c99e091e" "c086fe46209696a2d01752c0216ed72fd6faeabaaaa40db9fc1518abebaf700d" "e074be1c799b509f52870ee596a5977b519f6d269455b84ed998666cf6fc802a" "d5a878172795c45441efcd84b20a14f553e7e96366a163f742b95d65a3f55d71" "2c49d6ac8c0bf19648c9d2eabec9b246d46cb94d83713eaae4f26b49a8183fc4" "cae81b048b8bccb7308cdcb4a91e085b3c959401e74a0f125e7c5b173b916bf9" "01cf34eca93938925143f402c2e6141f03abb341f27d1c2dba3d50af9357ce70" "0685ffa6c9f1324721659a9cd5a8931f4bb64efae9ce43a3dba3801e9412b4d8" "ff3c57a5049010a76de8949ddb629d29e2ced42b06098e046def291989a4104a" "fd22c8c803f2dac71db953b93df6560b6b058cb931ac12f688def67f08c10640" "4a8d4375d90a7051115db94ed40e9abb2c0766e80e228ecad60e06b3b397acab" "e27556a94bd02099248b888555a6458d897e8a7919fd64278d1f1e8784448941" "3df5335c36b40e417fec0392532c1b82b79114a05d5ade62cfe3de63a59bc5c6" "f94110b35f558e4c015b2c680f150bf8a19799d775f8352c957d9d1054b0a210" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "e3c64e88fec56f86b49dcdc5a831e96782baf14b09397d4057156b17062a8848" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "76b4632612953d1a8976d983c4fdf5c3af92d216e2f87ce2b0726a1f37606158" "9dc64d345811d74b5cd0dac92e5717e1016573417b23811b2c37bb985da41da2" "f831c1716ebc909abe3c851569a402782b01074e665a4c140e3e52214f7504a0" "d1527d35673f958d370d23096a266888771d68f5942be5377796d79ab2c9792f" "654b365467a92ff70c70f4926974e07dcdb34805d2787c51710b467e695342e6" "a4ef58c2fb31b065ad09fa3029adba5eb518e42ef104cf9acf7c409abf40ca55" "8c867d38498653a86c1071714502d01eabb8d8c9ec976a7ddc4d04c23a991a97" "39a854967792547c704cbff8ad4f97429f77dfcf7b3b4d2a62679ecd34b608da" "10551f0a24d0ac97a109f02178e9e34b448ee12a52357911cf3362a6b249cae6" "dd7213b37f448685f41e28b83a497f78fdefeeef0d47531fc24e99f576a7a191" "34c1b320a9d35318ca01660d533eee299d538f5a0c505c076511493b0a4f093d" "69ad4071c7b2d91543fddd9030816404ff22e46f7207549319ce484e23082dee" "8e5f723fc78532cfe9d76fd804dcd05ed5ea1eeea65507e25723b9e5934b1cbd" "6a2cc07c407e8321f0df155988e60b39fe6f2488d2c79a6b14211854ea6fbc52" "cdc2a7ba4ecf0910f13ba207cce7080b58d9ed2234032113b8846a4e44597e41" "7de92d9e450585f9f435f2d9b265f34218cb235541c3d0d42c154bbbfe44d4dd" "317a45f190eaa3ccf8af6168aa89112d9cb794f87f409bc7a0638edee20d07fd" "0ea5731605469a81203311ad7b4b3db03d6d7249ce621e3f2793ae3613d165ed" "06e0662b31a2ae8da5c6b5e9a05b25fabd1dc8dd3c3661ac194201131cafb080" "77a70a104f0eefd1bade76d53ba6cadfbb6c87eeb9f358acd85d6c5ce9aa02d6" "b71da830ae97a9b70d14348781494b6c1099dbbb9b1f51494c3dfa5097729736" "46f6f73fb47a2a19b6ee1a49781f835fd73a185674268d4e048acf6feac9c55d" "701b4b4e7989329a0704b92fc17e6600cc18f9df4f2466617ec91c932b5477eb" "aa9834b2ccf220220504aa4d0f6513ce9124a939c73586ad623565f7b3bbffb3" "8310462f5008fe10661e27ceab164e05c509343641cc262134fc623422b5999d" "0a8b65f747471394d1539ba19722f7ac733b5d1d9419a83f2b3eb9e9a1443aa9" "74c7fb40d06ce63839f61695301363533eca789c2f057c50e21e295c4e96ce74" "ec38d891ab6805f112b47c18149190a50bf1e2967b6e9fc84453989b6f67b2f6" "42d116236094bbb32033705237877aa3e83d436649c92e541e941347f0a7e605" "c51e302edfe6d2effca9f7c9a8a8cfc432727efcf86246002a3b45e290306c1f" "d422c7673d74d1e093397288d2e02c799340c5dabf70e87558b8e8faa3f83a6c" "cc2f32f5ee19cbd7c139fc821ec653804fcab5fcbf140723752156dc23cdb89f" "1048305cc1ac0f9088768641fb1c64756ee82b9d0b088b2950f6bae961dccc19" "499c3dd62c262b0bbb3ea0f5c83e92db5eac4a2a58468b51900e0ca706a7ad12" "271d9389c0256fa7df2bbb6b5fd304d08bd6178371f46159d963621669e8c203" "be2c1a78f42783eab9ff068c3f09e81a7908a77a1d288ce8d704491165ef448b" "ded82bed6a96cb8fdc7a547ef148679e78287664a5236e9c694e917383b052d7" "e3d4bc76062df5a4b72d0ec8abd04233ea3d33a8418430a719bd533e0e7c36ee" "2ea9afebc23cca3cd0cd39943b8297ce059e31cb62302568b8fa5c25a22db5bc" "c29d6bc4bb6ee61149ce0fce6bc2bea539dcab11f0fb7bb0f1e2d8f5fb817a8e" "14afbe72aeadc67fb3061ddaaaad924c58b45dc6c604fa31675222d851b70161" "45482e7ddf47ab1f30fe05f75e5f2d2118635f5797687e88571842ff6f18b4d5" "dbcaaf13f0d62b577dedefe6e1a9ae3e57ac86f316fea6ae83341db916fcb9c7" "57db540d6a8cc20d2e2f20bd63dc3af4eb9e4bbfa7252a0ee877c99b577996c4" "7c83927617afdf71cc90801ffee5965939505b7cfecdcbe15961fc32a0d9bd02" "026eff18f1c0fda8f9bf5738343019a8ebe8db55c1bd9bcbd4536d8ed112d5df" "9a4b5a8dfe01489c7046f75764c988a8a93aeb36e48c39dc55f21fb3ecbf2c59" "5e769f0dc4c262f216c2a30ca8bf55ff2ebc164f779bd2f32ce989290dc13485" "dd8223836a1a1576a8e9e7e1d19a894dce45e0f1a5498b5aecf0ccef3bec8b90" "0f302165235625ca5a827ac2f963c102a635f27879637d9021c04d845a32c568" "be0efbaebc85494f3c1c06e320fd13a24abf485d5f221a90fe811cea9a39ed85" "fbe90e506c7bbc25eb1cbfce3bcd90a2bec9fe09ecfdf7302fc8705d43a39fcd" "1866ad9491a157007f89c14ceb54dfd04d8c1b5015132c79975331276eefef50" "c02b12444e027c332e58a7fb46ffd870df9e00123fd61e675288439b22c3c2a1" "c3fa63eab93d1f0b4bf9f60a98a2848ba29c34cc6f2ef5cf4076d9c190a47a6c" "5c5de678730ceb4e05794431dd65f30ffe9f1ed6c016fa766cdf909ba03e4df4" "0ec7094cc0a201c1d6f7c37f2414595d6684403b89b6fd74dcc714b5d41cd338" "087af241cc83130395244db7fca84b545fef75da92d63462436f3ffef916fa33" "41a5a10e5221572b54c478eba62b51c510277100c9553d198fb1f4d56c45c6da" "011d4421eedbf1a871d1a1b3a4d61f4d0a2be516d4c94e111dfbdc121da0b043" "e737ca3fb6767587a5e3fb066ec11f216f62faa2f64d18ae3b8c362c274ed2c8" "9987adb99037db4fca049c26ab751370b37b7a84c458d8f11f6590d5a02e97d5" "922f930fc5aeec220517dbf74af9cd2601d08f8250e4a15c385d509e22629cac" "9493b7c662667d7a2f2bf80390d88f549e1e253f3f647be575d9f29b215ef2c6" "9568c83e0af1d7a992c37411ace790036735a26c484531bf77690adf2c5d3e8b" "6c0d748fb584ec4c8a0a1c05ce1ae8cde46faff5587e6de1cc59d3fc6618e164" "6ad45ae62cb64d84c6febbe85e3da7b3e68e65383e1a333578cabe5398d3109a" "bd28a7a54d9bfbda4456afb650a5990282b391f1e0494fb04b095981255066ae" "20ad8133a73088c0ce4f26d106c3e70cae4e10c7e613c9b9e17a962eb194a24f" "047ec205dcb5edbb94b35800110150a6e41e6cc92c0ccfb2ed25ac3df94331a6" "b5cff93c3c6ed12d09ce827231b0f5d4925cfda018c9dcf93a2517ce3739e7f1" "e6e07c74bee845f48da5f46843a241d71d4ee3bf945fb506c05a08e5c872df3e" "5f4dfda04fbf7fd55228266c8aab73953d3087cea7fd06dd7f8ff1e4a497c739" "e006d90eaf64a2d78154ecb277ccc82327e1b975d7d0e2f933acca3131cd0177" "d86ddb4126c19487edd10a0f1a16f77fdaadafbdac9f4fcd695cf1c0a215117b" "64affc3597b4271ba6b0b428777d616cfb20d8f7f147dbd00f1de220b2b59bbf" "4ca84f9861113f889d505b66c4a9c30b81400f450b54f4c857d3eb44c5bdc601" "1ba950bff674dd0e08edeb8b8f83ee338bbef0bc769349ed38de10854927e487" "aad7fd3672aad03901bf91e338cd530b87efc2162697a6bef79d7f8281fd97e3" "b80d4f6dee7691fc5a437d760164c3eba202944b3f977d5b47bbb6b76cba0806" "69ecb7a75a0a8440df4b9ffe28b46dadf849b499c7e10680c26b99a84df773ca" "d1b30c69aaf27807108e358b08c6aec4759d7240bc530fca90fd5833813fbc84" "32b75b124f7f84517d3803a13a807189bae717b9d28e68e5a327a8ba55b7a6ee" "57d7e8b7b7e0a22dc07357f0c30d18b33ffcbb7bcd9013ab2c9f70748cfa4838" "c2bce71b37ffd6e95fbd3b98d6eaadd113ec308f85149cfc8f50dee716764fed" "9939e735844cb24144d29ddf03fadf86a2d455758afeeee30372258e8a6401bb" "3d9df5511048d0815b1ccc2204cc739117c1a458be92fb26c03451149a1b1c11" "39f0ac86b012062fed46469cc5ea1b00aa534db587ad21d55a9717a1bac99a27" "4c8372c68b3eab14516b6ab8233de2f9e0ecac01aaa859e547f902d27310c0c3" "6213a6047cc19f580c37ef3f6d47fd5a55ebdf9b5590475d8f7a6aecd79a1cc0" "1a094b79734450a146b0c43afb6c669045d7a8a5c28bc0210aba28d36f85d86f" "5516001c13a43f1f5be2d7df8035445f8d7c73179f637e40c1503afb184d98f2" "ef92efb0f9178b4a1130ffae1571d71983d123f84acd6565e09cb58ca71982c9" "6e03b7f86fcca5ce4e63cda5cd0da592973e30b5c5edf198eddf51db7a12b832" "67b11ee5d10f1b5f7638035d1a38f77bca5797b5f5b21d16a20b5f0452cbeb46" "3fe4861111710e42230627f38ebb8f966391eadefb8b809f4bfb8340a4e85529" "58ef0d9d877d9b1c19183f4215de272fa2938744f077e3a69ea12b8b6e852155" "d9c957b0e8d2d7f1bbb781fc729e06598017ade2d0c18611e5abbdde0f65d981" "1319bfcf42cefb12fad274e5763d0eae0d0401cddc9738bdf220fe89447e9292" "0c5204945ca5cdf119390fe7f0b375e8d921e92076b416f6615bbe1bd5d80c88" "294c4b6a955149c93945f901a284140df29963a57939e9ed2fc4ad79b3605080" "e624f013e266f41148aa2e445a4b8681b0afb346a9126993e345309c9a829535" "0615f6940c6c5e5638c9157644263889db755d43576c25f7b311806f4cfe2c3a" "dbade2e946597b9cda3e61978b5fcc14fa3afa2d3c4391d477bdaeff8f5638c5" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "a5d04a184d259f875e3aedbb6dbbe8cba82885d66cd3cf9482a5969f44f606c0" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
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
     (implicitParams :underline
                     (:color "#c0c0c0"))
     (operator :foreground "#000080")
     (param :foreground "#000000")
     (class :foreground "#20999d")
     (trait :foreground "#20999d" :slant italic)
     (object :foreground "#5974ab" :slant italic)
     (package :foreground "#000000")
     (deprecated :strike-through "#000000")))
 '(evil-emacs-state-cursor '("#D50000" hbar))
 '(evil-insert-state-cursor '("#D50000" bar))
 '(evil-normal-state-cursor '("#F57F17" box))
 '(evil-visual-state-cursor '("#66BB6A" box))
 '(exwm-floating-border-color "#3c3d38")
 '(fci-rule-character-color "#d9d9d9")
 '(fci-rule-color "#d9d9d9")
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'light)
 '(global-display-line-numbers-mode t)
 '(gnus-logo-colors '("#0d7b72" "#adadad"))
 '(gnus-mode-line-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };"))
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-symbol-colors
   '("#F57F17" "#66BB6A" "#0097A7" "#42A5F5" "#7E57C2" "#D84315"))
 '(highlight-symbol-foreground-color "#546E7A")
 '(highlight-tail-colors ((("#333a23") . 0) (("#2d3936") . 20)))
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
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
     ("\\?\\?\\?+" . "#dc752f")))
 '(jdee-db-active-breakpoint-face-colors (cons "#171F24" "#c792ea"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#171F24" "#c3e88d"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#171F24" "#37474F"))
 '(line-number-mode nil)
 '(linum-format " %7i ")
 '(menu-bar-mode nil)
 '(mlscroll-in-color "#e67fe67fe67f")
 '(mlscroll-out-color "#FAFAFA")
 '(objed-cursor-color "#ff5370")
 '(package-selected-packages
   '(ac-slime common-lisp-snippets basic-theme autumn-light-theme apropospriate-theme sublime-themes eclipse-theme base16-theme almost-mono-themes alect-themes paredit quack inf-clojure clojure-mode geiser-racket flymake-racket racket-mode which-key dimmer god-mode vs-light-theme spacemacs-theme twilight-theme twilight-anti-bright-theme toxi-theme lavender-theme nordless-theme fzf rust-mode rust-auto-use flycheck-rust ayu-theme doom-modeline intellij-theme habamax-theme doom-themes color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized twilight-bright-theme color-theme-modern tao-theme emmet-mode yasnippet-snippets magit ede-php-autoload php-eldoc eldoc yasnippet lsp-ui company-lsp lsp-mode php-quickhelp php-mode))
 '(pdf-view-midnight-colors (cons "#EEFFFF" "#263238"))
 '(pos-tip-background-color "#ffffffffffff")
 '(pos-tip-foreground-color "#78909C")
 '(rustic-ansi-faces
   ["#263238" "#ff5370" "#c3e88d" "#ffcb6b" "#82aaff" "#c792ea" "#89DDFF" "#EEFFFF"])
 '(show-paren-mode t)
 '(tabbar-background-color "#ffffffffffff")
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
 '(vc-annotate-very-old-color nil)
 '(window-divider-default-places t)
 '(window-divider-mode nil))
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
(god-mode)
(which-key-mode)
(which-key-enable-god-mode-support)
(dimmer-configure-which-key)
(dimmer-configure-helm)
(dimmer-mode t)
(global-hl-line-mode)
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
;; (set-face-attribute 'region nil :background "#Ddeeff" :foreground nil)
;; (set-face-background 'hl-line "#EFEFEF")
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
;; (doom-modeline-mode 1)
;; (setq doom-modeline-buffer-encoding t)
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
              (push '("recur" . ?Ⓡ) prettify-symbols-alist)
              (push '("loop" . ?Ⓛ) prettify-symbols-alist)
              (push '("defn" . ?⨍) prettify-symbols-alist)
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
