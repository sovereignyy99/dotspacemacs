;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-ba
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; languages layers
     lsp
     ;; (lsp :variables
     ;;      lsp-clangd-executable 'clangd
     ;;      lsp-clients-clangd-executable 'clangd
     ;;      )
     sql
     asm
     ;; ruby
     html
     javascript
     ;;yaml-jsyaml
     yaml
     ;; (javascript :variables javascript-backend 'lsp)
     (c-c++ :variables
            c-c++-adopt-subprojects t
            c-c++-enable-clang-support t
            c-c++-default-mode-for-headers 'c-or-c++-mode
            c-c++-backend 'lsp-clangd
            c-c++-lsp-enable-semantic-highlight 'rainbow
            c-c++-enable-organize-includes-on-save t
            c-c++-enable-clang-format-on-save t
            c-c++-enable-auto-newline nil
            )
     ;; gtags
     ;; rtags
     cmake
     windows-scripts
     emacs-lisp
     ;; rust
     ;; yaml
     python
     ;; (python :variables
     ;;        python-backend 'lsp
     ;;        )
     markdown
     latex
     ;; graphviz
     ;; restructuredtext
     ;; csv
     ;; react


     ;; tools layers
     ;; sphinx
     ;; pandoc
     asciidoc
     (ranger :variables
             ranger-show-preview t
             ranger-ignored-extensions '("mkv" "iso" "mp4" "mov" "flv" "avi")
             ranger-max-preview-size 10
             ranger-enter-with-minus t
             ranger-show-hidden nil)
     (org :variables
          org-want-todo-bindings t
          org-enable-sticky-header nil
          org-log-done t
          ;;org-enable-epub-support t
          ;;org-enable-github-support t
          ;;org-enable-bootstrap-support t
          ;;org-enable-reveal-js-support t
          org-enable-org-journal-support t
          org-journal-dir "~/org/journal/"
          org-journal-file-format "%Y-%m-%d"
          org-journal-date-prefix "#+TITLE: "
          org-journal-date-format "%A, %B %d %Y"
          org-journal-time-prefix "* "
          org-journal-time-format ""
          org-projectile-file "TODOs.org"
          )
     autohotkey
     ;; (shell :variables
     ;;        shell-default-height 50
     ;;        shell-default-position 'bottom
     ;;        shell-default-shell 'ansi-term
     ;;        shell-default-term-shell "~/bin/zsh")
     shell
     shell-scripts
     (spell-checking :variables
                     spell-checking-enable-by-default nil
                     enable-flyspell-auto-completion t)
     (syntax-checking :variables
                      syntax-checking-enable-by-default nil)
     (colors :variables
             colors-colorize-identifiers 'variables)
     ;; emoji
     ;; (ibuffer :variables ibuffer-group-buffers-by 'projects)
     ;; deft
     ;; (vinegar :variables vinegar-reuse-dired-buffer t)
     ;; restclient
     ;; mu4m
     ;; gpu
     ;; prodigy
     ;; github
     ;; search-engine


     ;; completion layers
     ;; gtags
     ;; dash ;; open and search docs with Zeal
     helm
     (auto-completion :variables
                      auto-completion-return-key-behavior 'nil
                      auto-completion-tab-key-behavior 'complete
                      auto-completion-complete-with-key-sequence nil
                      auto-completion-complete-with-key-sequence-delay 0.1
                      auto-completion-idle-delay 0.01
                      auto-completion-private-snippets-directory nil
                      company-minimum-prefix-length 1
                      auto-completion-enable-help-tooltip 'manual
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t
                      ;; auto-completion-private-snippets-directory "~/.spacemacs.d/snippets/"
                      :disabled-for org markdown
                      )

     ;; better config layers
     better-defaults
     (spacemacs-layouts :variables layouts-enable-autosave nil
                        layouts-autosave-delay 300)
     (chinese :variables
              chinese-default-input-method 'pinyin
              chinese-enable-fcitx t
              chinese-enable-youdao-dict t
              )

     ;; vcs layers
     (git :variables
          git-magit-status-fullscreen t
          magit-push-always-verify nil
          magit-save-repository-buffers 'dontask
          magit-revert-buffers 'silent
          magit-refs-show-commit-count 'all
          magit-revision-show-gravatars nil)
     ;; version-control


     ;; themes layers
     themes-megapack


     ;; custom packet layers
     ;; sunzhongyang

     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      ;; auto-dim-other-buffers
                                      ;; (godot-gdscript :location local)  ;;game engine
                                      beacon
                                      ;; image+
                                      ;; emacs-cquery
                                      ;; doom-modeline
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages
   '(
     vi-tilde-fringe
     ;; org-projectile org-brain magit-gh-pulls magit-gitflow  evil-mc realgud tern company-tern
     ;; evil-args evil-ediff evil-exchange evil-unimpaired
     ;; evil-indent-plus volatile-highlights smartparens
     ;; spaceline holy-mode skewer-mode rainbow-delimiters
     ;; highlight-indentation vi-tilde-fringe eyebrowse ws-butler
     ;; org-bullets smooth-scrolling org-repo-todo org-download org-timer
     ;; livid-mode git-gutter git-gutter-fringe  evil-escape
     ;; leuven-theme gh-md evil-lisp-state spray lorem-ipsum symon
     ;; ac-ispell ace-jump-mode auto-complete auto-dictionary
     ;; clang-format define-word google-translate disaster epic
     ;; fancy-battery org-present orgit orglue spacemacs-theme
     ;; helm-flyspell flyspell-correct-helm clean-aindent-mode
     ;; helm-c-yasnippet ace-jump-helm-line helm-make magithub
     ;; helm-themes helm-swoop helm-spacemacs-help smeargle
     ;; ido-vertical-mode flx-ido company-quickhelp ivy-rich helm-purpose
     )
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading t
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'nil
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '(
                                (recents . 8)
                                (projects . 8)
                                )
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         monokai
                         dracula
                         spacemacs-dark
                         solarized-dark
                         leuven
                         zenburn
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 28
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state t
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.15
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar nil
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   ;; A value from the range (0..100), in increasing opacity, which describes
   dotspacemacs-maximized-at-startup t
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  (message "load user-init...")

  (setq configuration-layer--elpa-archives
        '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
          ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
          ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

  ;;(setq-default configuration-layer-elpa-archives
  ;;              '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
  ;;                ("org-cn"   . "http://elpa.emacs-china.org/org/")
  ;;                ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")))

  ;; (setq term-char-mode-point-at-process-mark nil)

  (setq term-char-mode-point-at-process-mark nil)

  ;; https://github.com/syl20bnr/spacemacs/issues/2705
  ;; (setq tramp-mode nil)
  (setq tramp-ssh-controlmaster-options
        "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

  ;; ss proxy. But it will cause anacond-mode failed.
  ;;  (setq socks-server '("Default server" "127.0.0.1" 1080 5))
  ;;  (setq evil-shift-round nil)
  ;;  (setq byte-compile-warnings '(not obsolete))
  ;;  (setq warning-minimum-level :error)

  (setq custom-file (expand-file-name "custom.el" dotspacemacs-directory))
  (load custom-file)
  ;; (load (expand-file-name "init-syntax-table.el" dotspacemacs-directory))
  ;; (load (expand-file-name "xcwen-misc.el" dotspacemacs-directory))

  ;; (let ((fcitx-path "D:\\emacstools\\fcitx-remote.exe"))
  ;;   (setenv "PATH" (concat fcitx-path ";" (getenv "PATH")))
  ;;   (add-to-list 'exec-path fcitx-path))

  ;; (setq w32-pass-lwindow-to-system nil)
  ;; (setq w32-lwindow-modifier 'super)
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;;##########################################################################
  (message "load user-config...")

  ;;##########################################################################
  ;; 解决org表格中英文对齐的问题
  (when (configuration-layer/layer-usedp 'chinese)
    (when (and (spacemacs/system-is-mswindows) window-system)
      (spacemacs//set-monospaced-font "Source Code Pro" "Microsoft YaHei" 14 16)))

  ;; Setting Chinese Font
  (when (and (spacemacs/system-is-mswindows) window-system)
    (setq ispell-program-name "aspell")
    (setq w32-pass-alt-to-system nil)
    (setq w32-apps-modifier 'super)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset
                        (font-spec :family "Microsoft YaHei" :size 16))))

  ;; (add-hook 'evil-normal-state-entry-hook XXX)

  (fset 'evil-visual-update-x-selection 'ignore)  ;; 防止选中自动复制

  ;;##########################################################################
  ;; (add-to-list 'load-path "~/.emacs.d/lisp/")
  (require 'beacon)
  (beacon-mode t)

  ;; image+
  ;; (eval-after-load 'image '(require 'image+))

  ;;##########################################################################
  ;;##########################################################################
  ;; stop smartparens being too smart
  (setq sp-escape-wrapped-region nil)
  (setq sp-escape-quotes-after-insert nil)

  ;; hide minor modes
  (setq dotspacemacs-mode-line-unicode-symbols nil)
  (spacemacs/toggle-mode-line-minor-modes-off)

  ;;if there is a #+ATTR.*: width="200", resize to 200, otherwise resize to 400
  (setq org-image-actual-width '(300))

  ;; evil in compilation mode (from github.com/asok/.emacs.d)
  ;; (add-hook 'compilation-mode-hook
  ;;           '(lambda ()
  ;;              (local-unset-key "g")
  ;;              (local-unset-key "h")
  ;;              (evil-define-key 'motion compilation-mode-map "r" 'recompile)
  ;;              (evil-define-key 'motion compilation-mode-map "h" 'evil-backward-char)))

  ;; evil command mode
  ;; (define-key evil-ex-completion-map (kbd "C-a") 'move-beginning-of-line)
  ;; (define-key evil-ex-completion-map (kbd "C-b") 'backward-char)
  ;; (define-key evil-ex-completion-map (kbd "C-d") 'delete-forward-char)
  ;; (define-key evil-ex-completion-map (kbd "C-h") 'evil-ex-delete-backward-char)

  ;; previous/nex modified hunk in git
  ;; (spacemacs/set-leader-keys
  ;;   "gp" '(lambda () (interactive) (git-gutter+-next-hunk -1))
  ;;   "gn" '(lambda () (interactive) (git-gutter+-next-hunk 1)))

  ;; undo-tree
  ;; (setq undo-tree-auto-save-history t
  ;;       undo-tree-history-directory-alist
  ;;       `(("." . ,(concat user-home-directory ".undo"))))


  ;;##########################################################################
  ;;##########################################################################
  ;; (require 'cquery)
  ;; (setq cquery-executable "d:/cquery/build/cquery.exe")
  ;; (setq cquery-extra-init-params '(:index (:comments 2) :cacheFormat "msgpack" :completion (:detailedLabel t)))

  ;; ;; c++
  ;; (defun my-c-style ()
  ;;   ;; (c-set-style "linux")
  ;;   (setq tab-width 4)
  ;;   (setq c-basic-offset tab-width)
  ;;   (c-set-offset 'substatement-open 0)
  ;;   (c-set-offset 'innamespace 0)
  ;;   )
  ;; (spacemacs/add-to-hooks 'my-c-style '(c-mode-hook c++-mode-hook))

  ;; ;; lsp
  ;; (setq cquery-additional-arguments (list "--log-file" "cquery.log"))
  ;; ;; (setq lsp-highlight-symbol-at-point nil)
  ;; (face-spec-set 'lsp-face-highlight-textual '((t :background nil :inherit hl-line)))
  ;; ;; (face-spec-set 'cquery-sem-member-var-face '((t :inherit nil)))
  ;; ;; (face-spec-set 'cquery-sem-free-var-face '((t :inherit nil)))
  ;; (setq lsp-ui-doc-enable nil)
  ;; (setq lsp-ui-peek-enable nil)
  ;; (setq lsp-ui-sideline-code-actions-prefix "")
  ;; ;; (setq lsp-print-io t) ;; for debug
  ;; (setq company-lsp-cache-candidates nil)
  ;; (setq company-lsp-async t)
  ;; (setq company-transformers nil)

  ;; pomodoro
  (setq org-pomodoro-audio-player "mplayer")
  (setq org-pomodoro-finished-sound-args "-volume 0.7")
  (setq org-pomodoro-long-break-sound-args "-volume 0.7")
  (setq org-pomodoro-short-break-sound-args "-volume 0.7")
  (setq org-pomodoro-ticking-sound-args "-volume 0.3")

  ;;##########################################################################
  ;;##########################################################################
  ;; (setq-default helm-make-build-dir "~/B-hello-headers/build")
  ;; (put 'helm-make-build-dir 'safe-local-variable 'stringp)
  ;; (with-eval-after-load 'projectile
  ;;   (push '("C" "h") projectile-other-file-alist))

  ;; (c-add-style "szy"
  ;;              '((indent-tabs-mode . nil)
  ;;                (c-basic-offset . 4)
  ;;                (c-offsets-alist
  ;;                 (substatement-open . 0)
  ;;                 (inline-open . 0)
  ;;                 (statement-cont . c-lineup-assignments)
  ;;                 (inextern-lang . 0)
  ;;                 (innamespace . 0))))

  ;; (push '(other . "szy") c-default-style)

  ;; (push 'company-clang spacemacs-default-company-backends)
















  ;;##########################################################################
  (with-eval-after-load 'dired
    ;; (setq dired-recursive-deletes 'always)
    (setq dired-recursive-copies 'always)
    (put 'dired-find-alternate-file 'disabled nil)
    (require 'dired-x)
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
    (setq dired-dwin-target 1)
    )

  ;; Appointments and notifications
  ;;  (require 'notifications)
  ;;  (require 'appt)
  ;;  (defun appt-agenda-notify (minutes-to-appt time-current message)
  ;;    "Display a notification before scheduled events registered in org-agenda"
  ;;    (notifications-notify :title "Appointment"
  ;;                          :body (format "In %s minutes:" minutes-to-appt) message
  ;;                          :app-name "Emacs: Org"
  ;;                          :urgency "normal"
  ;;                          :sound-name "alarm-clock-elapsed")
  ;;    )
  ;;  (setq appt-message-warning-time 15
  ;;        appt-display-mode-line t
  ;;        appt-display-format 'window
  ;;        appt-disp-window-function (function appt-agenda-notify))

  ;; Update appointments automatically
  ;;  (org-agenda-to-appt)
  ;;  (run-at-time "12:00am" (* 24 3600) 'org-agenda-to-appt)
  ;;  (add-hook 'after-save-hook
  ;;            '(lambda ()
  ;;               (if (seq-contains (org-agenda-files) (buffer-file-name))
  ;;                   (org-agenda-to-appt))))
  ;;  (appt-activate 1)
  ;;  (display-time)

  ;;##########################################################################
  (with-eval-after-load 'org
    (setq spaceline-org-clock-p t) ;; To permanently enable mode line display of org clock
    (setq org-export-coding-system 'utf-8) ;; force UTF-8
    (setq org-todo-keywords
          '((sequence
             ;; The item is ready to be done at the earliest opportunity or at the date (and maybe time) indicated in the SCHEDULED tag. Some tasks are given a DEADLINE date which is useful for scheduling the tasks during my daily planning.
             "TODO(t!)"
             ;; I should use this tag when I start on a task, but if I clock in to a TODO item, I don't really need this task.
             "FIRING(f!)"
             ;; ongoing
             "IN-PROGRESS(i!)"
             ;; I did some work on this task but I am waiting for a response. If I use this task I schedule the task into the future as a reminder to follow up with some notes in the body of the task.
             "WAITING(w!)"
             ;; Used to tag an activity that can only be done at the specified time and date, instead of tasks that can be completed at any time.
             "APPT(a!)"
             ;; "NEXT(n!)"
             ;; "DOING-NOW(d!)"
             ;; "BLOCKED(b!)"
             ;; "TO-DELEGATE(g!)"
             ;; "DELEGATED(D!)"
             ;; "FOLLOW-UP(f!)"
             ;; "TICKLE(T!)"
             "|"
             "DONE(d!)"
             ;; I decided not to do this task but have left the task on file with this status.
             "CANCELLED(c!)"
             ;; Used to identify a task that will not be activated just yet. The reason will be included in the task notes.
             "DEFERRED(D!)")))

    (setq org-todo-keyword-faces
          '(
            ;; ("TODO" . org-warning)
            ("TODO" . "Orange")
            ("FIRING" . "Red")
            ("IN-PROGRESS" . "OrangeRed")
            ("WAITING" . "LightSkyBlue")
            ("APPT" . "Pink")
            ;; ("NEXT" . "#008080")
            ;; ("DOING-NOW" . "#E35DBF")
            ;; ("DELEGATED" . "pink")
            ("DONE" . "Green")
            ("CANCELED" . "Green")
            ("DEFERRED" . "ForestGreen")
            ))

    ;; 调试好久的颜色，效果超赞！ todo keywords 增加背景色
    ;; (setf org-todo-keyword-faces '(("TODO" . (:foreground "white" :background "#95A5A6"   :weight bold))
    ;;                                ("HAND" . (:foreground "white" :background "#2E8B57"  :weight bold))
    ;;                                ("DONE" . (:foreground "white" :background "#3498DB" :weight bold))))










    (setq org-agenda-files '(
                             "~/org"
                             "~/org/journal"
                             "~/org/life/children"
                             "~/org/life/film"
                             "~/org/life/finance"
                             "~/org/life/history"
                             "~/org/life/job"
                             "~/org/misc"
                             "~/org/project"
                             "~/org/learning"
                             "~/org/learning/algorithm_and_data_structure"
                             "~/org/learning/android"
                             "~/org/learning/books"
                             "~/org/learning/comm_ic"
                             "~/org/learning/circuit_board_design"
                             "~/org/learning/crossbelt_sorter"
                             "~/org/learning/datasheet"
                             "~/org/learning/database"
                             "~/org/learning/deeplearning"
                             "~/org/learning/electric"
                             "~/org/learning/ethernet"
                             "~/org/learning/industrial_fieldbus"
                             "~/org/learning/knowledge_system"
                             "~/org/learning/mcu"
                             "~/org/learning/linux"
                             "~/org/learning/motor_control"
                             "~/org/learning/operating_system"
                             "~/org/learning/parcel_singulator"
                             "~/org/learning/plc"
                             "~/org/learning/program_language"
                             "~/org/learning/qt"
                             "~/org/learning/rtos"
                             "~/org/learning/simulation"
                             "~/org/learning/tools"
                             ))
    ;; (setq org-agenda-files (directory-files-recursively "~/org/project" "\\.org$"))
    ;; (setq org-src-fontify-natively t)
    (setq org-capture-templates
          '(
            ;; TodoWithLink
            ("F" "Todo@PulpFiction: with links ^ ^"
             entry (file+headline "~/org/journal/PulpFiction.org" "Tasks")
             ;; "* TODO [#B] %?\n  %i\n %a"
             (file "~/.spacemacs.d/snippets/todo.orgcaptmpl")
             :empty-lines 1)

            ;; TodoWithoutLink
            ("f" "Todo@PulpFiction: without links ^ ^"
             entry (file+headline "~/org/journal/PulpFiction.org" "Tasks")
             ;; "* TODO [#B] %?\n  %i\n %a"
             (file "~/.spacemacs.d/snippets/todo_nolinks.orgcaptmpl")
             :empty-lines 1)

            ;; TodoWithLink
            ("W" "Todo@WorkNotes: with links ^_^"
             entry (file+headline "~/org/journal/WorkNotes.org" "Tasks")
             ;; "* TODO [#B] %?\n  %i\n %a"
             (file "~/.spacemacs.d/snippets/todo.orgcaptmpl")
             :empty-lines 1)

            ;; TodoWithoutLink
            ("w" "Todo@WorkNotes: without links ^_^"
             entry (file+headline "~/org/journal/WorkNotes.org" "Tasks")
             ;; "* TODO [#B] %?\n  %i\n %a"
             (file "~/.spacemacs.d/snippets/todo_nolinks.orgcaptmpl")
             :empty-lines 1)

            ;; Journal
            ("j" "Journal"
             entry (file+datetree "~/org/journal/journal.org")
             (file "~/.spacemacs.d/snippets/journal.orgcaptmpl")
             :empty-lines 1)

            ;; Memo
            ("m" "Memo"
             entry (file+headline "~/org/journal/PulpFiction.org" "Memo")
             (file "~/.spacemacs.d/snippets/memo.orgcaptmpl")
             :empty-lines 1)))

    (setq org-file-apps
          '(
            ("\\.mm\\'" . default)
            ("\\.x?html?\\'" . default)
            ("\\.pdf\\'" . default)
            ("\\.docx\\'" . default)
            ("\\.doc\\'" . default)
            ("\\.xlsx\\'" . default)
            ("\\.xls\\'" . default)
            ("\\.pptx\\'" . default)
            ("\\.ppt\\'" . default)
            (auto-mode . emacs)
            ))

    ;; org-refile configuration
    (setq org-refile-targets '((org-agenda-files :maxlevel . 3)))
    (setq org-refile-use-outline-path 'file)
    (setq org-outline-path-complete-in-steps 'nil)
    (setq org-refile-allow-creating-parent-nodes 'confirm)

    ;; toc
    (setq toc-org-max-depth 2)
    (setq org-startup-indented t)
    (setq org-bullets-bullet-list '("◉" "○" "✸" "✿"))
    ;; (setq org-bullets-bullet-list '("☰" "☷" "☯" "☭"))

    (add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
    (org-babel-do-load-languages
     'org-babel-load-languages
     '(
       ;; (sh . t)
       (python . t)
       ;; (R . t)
       ;; (ruby . t)
       ;; (ditaa . t)
       (dot . t)
       ;; (octave . t)
       (sqlite . t)
       ;; (postgresql . t)
       ;; (perl . t)
       (C . t)
       ))
    )

  ;; push files into variable.
  (with-eval-after-load 'org-agenda
    (require 'org-projectile)
    (mapcar #'(lambda (file)
                (when (file-exists-p file)
                  (push file org-agenda-files)))
            (org-projectile-todo-files))
    )

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (defun air-org-skip-subtree-if-priority (priority)
    "Skip an agenda subtree if it has a priority of PRIORITY.

PRIORITY may be one of the characters ?A, ?B, or ?C."
    (let ((subtree-end (save-excursion (org-end-of-subtree t)))
          (pri-value (* 1000 (- org-lowest-priority priority)))
          (pri-current (org-get-priority (thing-at-point 'line t))))
      (if (= pri-value pri-current)
          subtree-end
        nil)))

  (defun air-org-skip-subtree-if-habit ()
    "Skip an agenda entry if it has a STYLE property equal to \"habit\"."
    (let ((subtree-end (save-excursion (org-end-of-subtree t))))
      (if (string= (org-entry-get nil "STYLE") "habit")
          subtree-end
        nil)))

  ;; (setq org-agenda-custom-commands
  ;;       '(("c" "Simple agenda view"
  ;;          ((tags "PRIORITY=\"A\""
  ;;                 ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
  ;;                  (org-agenda-overriding-header "High-priority unfinished tasks:")))
  ;;           (agenda "")
  ;;           (alltodo "")))))

  ;; (setq org-agenda-custom-commands
  ;;       '(("c" "Simple agenda view"
  ;;          ((tags "PRIORITY=\"A\""
  ;;                 ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
  ;;                  (org-agenda-overriding-header "High-priority unfinished tasks:")))
  ;;           (agenda "")
  ;;           (alltodo ""
  ;;                    ((org-agenda-skip-function
  ;;                      '(or (air-org-skip-subtree-if-priority ?A)
  ;;                           (org-agenda-skip-if nil '(scheduled deadline))))))))))

  ;; (setq org-agenda-span 'day)
  (setq org-agenda-custom-commands
        '(
          ;; #################################################################
          ;; #################################################################
          ;; #################################################################
          ("d" "@All: Daily agenda and all TODOs"
           ((tags "PRIORITY=\"A\""
                  ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                   (org-agenda-overriding-header "High-priority unfinished tasks:")))
            (agenda "" ((org-agenda-span 'day)))
            (alltodo ""
                     ((org-agenda-skip-function '(or (air-org-skip-subtree-if-habit)
                                                     (air-org-skip-subtree-if-priority ?A)
                                                     (org-agenda-skip-if nil '(scheduled deadline))))
                      (org-agenda-overriding-header "ALL normal priority tasks:"))))
           ((org-agenda-compact-blocks nil)))
          ;;  ((org-agenda-compact-blocks t)))

          ;; #################################################################
          ;; #################################################################
          ;; #################################################################
          ("w" "@Work: Daily agenda and all TODOs"
           ((tags "PRIORITY=\"A\""
                  ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                   (org-agenda-overriding-header "High-priority unfinished tasks:")))
            (agenda "" (
                        (org-agenda-span 'day)
                        ))
            (alltodo ""
                     ((org-agenda-skip-function '(or (air-org-skip-subtree-if-habit)
                                                     (air-org-skip-subtree-if-priority ?A)
                                                     (org-agenda-skip-if nil '(scheduled deadline))))
                      (org-agenda-overriding-header "ALL normal priority tasks:"))))
           ((org-agenda-compact-blocks nil)
            (org-agenda-files '(
                                "~/org"
                                "~/org/journal"
                                "~/org/journal/WorkNotes.org"
                                "~/org/life/children"
                                "~/org/life/film"
                                "~/org/life/finance"
                                "~/org/life/history"
                                "~/org/life/job"
                                "~/org/misc"
                                "~/org/project"
                                "~/org/learning"
                                "~/org/learning/algorithm_and_data_structure"
                                "~/org/learning/android"
                                "~/org/learning/books"
                                "~/org/learning/comm_ic"
                                "~/org/learning/circuit_board_design"
                                "~/org/learning/crossbelt_sorter"
                                "~/org/learning/datasheet"
                                "~/org/learning/database"
                                "~/org/learning/deeplearning"
                                "~/org/learning/electric"
                                "~/org/learning/ethernet"
                                "~/org/learning/industrial_fieldbus"
                                "~/org/learning/knowledge_system"
                                "~/org/learning/mcu"
                                "~/org/learning/linux"
                                "~/org/learning/operating_system"
                                "~/org/learning/motor_control"
                                "~/org/learning/parcel_singulator"
                                "~/org/learning/plc"
                                "~/org/learning/program_language"
                                "~/org/learning/qt"
                                "~/org/learning/rtos"
                                "~/org/learning/simulation"
                                "~/org/learning/tools"
                                ))
            (org-agenda-text-search-extra-files nil))
           )

          ;; #################################################################
          ;; #################################################################
          ;; #################################################################
          ("l" "@Life: Daily agenda and all TODOs"
           ((tags "PRIORITY=\"A\""
                  ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                   (org-agenda-overriding-header "High-priority unfinished tasks:")))
            (agenda "" (
                        (org-agenda-span 'day)
                        ))
            (alltodo ""
                     ((org-agenda-skip-function '(or (air-org-skip-subtree-if-habit)
                                                     (air-org-skip-subtree-if-priority ?A)
                                                     (org-agenda-skip-if nil '(scheduled deadline))))
                      (org-agenda-overriding-header "ALL normal priority tasks:"))))
           ((org-agenda-compact-blocks nil)
            (org-agenda-files '(
                                "~/org"
                                "~/org/journal"
                                "~/org/journal/PulpFiction.org"
                                "~/org/life/children"
                                "~/org/life/film"
                                "~/org/life/finance"
                                "~/org/life/history"
                                "~/org/life/job"
                                "~/org/misc"
                                "~/org/learning"
                                "~/org/learning/algorithm_and_data_structure"
                                "~/org/learning/android"
                                "~/org/learning/books"
                                "~/org/learning/comm_ic"
                                "~/org/learning/circuit_board_design"
                                "~/org/learning/datasheet"
                                "~/org/learning/database"
                                "~/org/learning/deeplearning"
                                "~/org/learning/electric"
                                "~/org/learning/ethernet"
                                "~/org/learning/industrial_fieldbus"
                                "~/org/learning/knowledge_system"
                                "~/org/learning/mcu"
                                "~/org/learning/linux"
                                "~/org/learning/operating_system"
                                "~/org/learning/motor_control"
                                "~/org/learning/plc"
                                "~/org/learning/program_language"
                                "~/org/learning/qt"
                                "~/org/learning/rtos"
                                "~/org/learning/simulation"
                                "~/org/learning/tools"
                                ))
            (org-agenda-text-search-extra-files nil))
           )

          ;; #################################################################
          ;; #################################################################
          ;; #################################################################
          ("N" "@CapturedNotes: Daily agenda and all TODOs"
           ((tags "PRIORITY=\"A\""
                  ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                   (org-agenda-overriding-header "High-priority unfinished tasks:")))
            (agenda "" ((org-agenda-span 'day)))
            (alltodo ""
                     ((org-agenda-skip-function '(or (air-org-skip-subtree-if-habit)
                                                     (air-org-skip-subtree-if-priority ?A)
                                                     (org-agenda-skip-if nil '(scheduled deadline))))
                      (org-agenda-overriding-header "ALL normal priority tasks:"))))
           ((org-agenda-compact-blocks nil)
            (org-agenda-files '("~/org" "~/org/journal/PulpFiction.org" "~/org/journal/WorkNotes.org"))
            (org-agenda-text-search-extra-files nil))
           )
          ;; #################################################################
          ;; sorting
          ;; ("F" todo "FIRING"
          ;;  ((org-agenda-sorting-strategy '(priority-down))
          ;;   (org-agenda-prefix-format "  Mixed: ")
          ;;   ))

          ;; current buffer
          ;; ("N" tags-tree "+CpteProject-Vacation"
          ;;  ((org-show-context-detail 'minimal)))

          ;; specified files.
          ;; ("N" todo "TODO"
          ;;  ((org-agenda-files '("~/org/project"))
          ;;   (org-agenda-text-search-extra-files nil)))

          ;; specified files.
          ;; ("N" search ""
          ;;  ((org-agenda-files '("~/org/project"))
          ;;   (org-agenda-text-search-extra-files nil)))
          ;; #################################################################
          ))
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;; When you perform a text search (the “s” selection from the org-agenda pop-up), include the archives for all of the files in Org’s agenda files list. If you archive things regularly, which I do, this helps you dig stuff out of there when you’re looking for it.
  ;; (setq org-agenda-text-search-extra-files '(agenda-archives))

  ;; I tend to leave a blank line at the end of the content of each task entry. This causes Org to automatically place a blank line before a new heading or plain text list item, just the way I like it.
  ;; (setq org-blank-before-new-entry (quote ((heading) (plain-list-item))))

  ;; This one is pretty awesome; it forces you to mark all child tasks as “DONE” before you can mark the parent as “DONE.” The agenda view already has the notion of “blocked” tasks (those with incomplete child tasks), which should appear dimmed (that, of course, is also customizable). This makes it even harder to slack off on your work.
  (setq org-enforce-todo-dependencies t)

  ;; I like to know when tasks have changed status. Setting this option causes Org to insert an annotation in a task when it is marked as done including a timestamp of when exactly that happened.
  ;; (setq org-log-done (quote time))

  ;; Adding yet further auditing, this option causes Org to insert annotations when you change the deadline of a task, which will note the previous deadline date and when it was changed. Very useful for figuring out how many times you “kicked the can down the road.”
  ;; (setq org-log-redeadline (quote time))

  ;; This does the same as above, but for the scheduled dates, which I use more often.
  ;; (setq org-log-reschedule (quote time))
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;; Org mode settings
  ;;  (setq org-directory "~/org/")
  ;;  (setq org-default-notes-file (concat org-directory "tasks.org"))
  ;;  (setq org-todo-keywords '((sequence "TODO" "PROGRESS" "|" "DONE" "DELEGATED" "CANCELLED")))
  ;;  (setq org-refile-targets
  ;;        '((nil :maxlevel . 1)
  ;;          (org-agenda-files :maxlevel . 1)))

  (setq company-show-numbers t)

  ;; flycheck
  ;; (flycheck-global-modes t) ;; ?
  ;; (setq flycheck-check-syntax-automatically '(new-line save))
  ;; (setq flycheck-check-syntax-automatically '(mode-enabled save))
  ;; (setq flycheck-clang-language-standard "c++11")
  ;; (add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))

  (custom-set-faces
   '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
   '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))

  ;; Major mode associations
  ;; (add-to-list 'auto-mode-alist '("\\.tscn\\'" . toml-mode))
  (setq spacemacs-large-file-modes-list '(archive-mode tar-mode jka-compr git-commit-mode image-mode doc-view-mode doc-view-mode-maybe ebrowse-tree-mode pdf-view-mode fundamental-mode ggtags-mode helm-gtags-mode tags-table-mode))

  ;;##########################################################################
  ;;(dolist (charset '(kana han cjk-misc bopomofo))
  ;;    (set-fontset-font (frame-parameter nil 'font) charset
  ;;                      (font-spec :family "微软雅黑" :size 16)))

  ;; (fset 'evil-visual-update-x-selection 'ignore)

  ;; force horizontal split window
  ;; (setq split-width-threshold 120)
  ;; (linum-relative-on)

  ;; (spacemacs|add-company-backends :modes text-mode)

  (add-hook 'doc-view-mode-hook 'auto-revert-mode)  ;; 自动刷新

  ;; temp fix for ivy-switch-buffer
  ;; (spacemacs/set-leader-keys "bb" 'helm-mini)

  (global-hungry-delete-mode t)
  ;; (spacemacs|diminish helm-gtags-mode)
  ;; (spacemacs|diminish ggtags-mode)
  ;; (spacemacs|diminish which-key-mode)
  ;; (spacemacs|diminish spacemacs-whitespace-cleanup-mode)
  ;; (spacemacs|diminish counsel-mode)


  ;;##########################################################################
  ;; doom-modeline
  ;; (require 'doom-modeline)
  ;; (doom-modeline-init)
  ;;(setq dotspacemacs-mode-line-theme '(doom))


  ;;##########################################################################
  ;; better-default
  (global-linum-mode t)
  (setq auto-save-default nil)
  (add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
  (delete-selection-mode t)
  (setq-default cursor-type 'bar)

  ;; (global-evil-visualstar-mode t)

  ;; (require 'abbrev-mode)
  ;; (abbrev-mode t)
  ;; (define-abbrev-table 'global-abbrev-table '(
  ;; ;; signature
  ;; ("8szy" "sunzhongyang")
  ;; ("8ms" "Microsoft")
  ;; ))

  ;; (recentf-mode 1)
  (setq recentf-max-menu-items 16)

  ;; ctrl+i跳转
  (setq dotspacemacs-distinguish-gui-tab t)
  (setq org-export-with-sub-superscripts (quote {}))

  ;;dwin = do what i mean.
  (defun occur-dwin()
    "Call 'occur' with a sane default."
    (interactive)
    (push (if (region-active-p)
              (buffer-substring-no-properties
               (region-beginning)
               (region-end))
            (let ((sym (thing-at-point 'symbol)))
              (when (stringp sym)
                (regexp-quote sym))))
          regexp-history)
    (call-interactively 'occur))

  ;; (require 'smartparens-config)
  ;; (add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
  (smartparens-global-mode t)
  (sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
  ;; (sp-local-pair 'lisp-interaction-mode "'" nil :actions nil)

  (global-company-mode t)
  (setq company-lsp-cache-candidates 'auto)

  ;; (require 'popwin)
  ;; (popwin-mode t)

  (require 'yasnippet)
  (yas-reload-all)
  (add-hook 'prog-mode-hook #'yas-minor-mode)

  ;; fix for the lsp error
  (defvar spacemacs-jump-handlers-fundamental-mode nil)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (defun locate-current-file-in-explorer ()
    (interactive)
    (cond
     ;; In buffers with file name
     ((buffer-file-name)
      (shell-command (concat "start explorer /e,/select,\"" (replace-regexp-in-string "/" "\\\\" (buffer-file-name)) "\"")))
     ;; In dired mode
     ((eq major-mode 'dired-mode)
      (shell-command (concat "start explorer /e,\"" (replace-regexp-in-string "/" "\\\\" (dired-current-directory)) "\"")))
     ;; In eshell mode
     ((eq major-mode 'eshell-mode)
      (shell-command (concat "start explorer /e,\"" (replace-regexp-in-string "/" "\\\\" (eshell/pwd)) "\"")))
     ;; Use default-directory as last resource
     (t
      (shell-command (concat "start explorer /e,\"" (replace-regexp-in-string "/" "\\\\" default-directory) "\"")))))

  ;;##########################################################################
  ;;##########################################################################
  ;;##########################################################################
  ;; my own keymaps
  (define-key global-map (kbd "C-c y") 'youdao-dictionary-search-at-point+)
  (define-key global-map (kbd "C-x C-r") 'recentf-open-files)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; 没必要改，evil模式下为M-j,M-
  ;; (define-key org-agenda-mode-map "j" 'org-agenda-next-item)
  ;; (define-key org-agenda-mode-map "k" 'org-agenda-previous-item)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;; (global-set-key "\C-x\ \C-r" 'recentf-open-files)
  ;; (global-set-key (kbd "C-h C-f") 'find-function)
  ;; (global-set-key (kbd "C-h C-v") 'find-variable)
  ;; (global-set-key (kbd "C-h C-k") 'find-function-on-key)
  ;; (global-set-key (kbd "C-c a") 'org-agenda)
  ;; (global-set-key (kbd "M-s o") 'occur-dwin)
  ;;C-n C-p to select
  (with-eval-after-load 'company
    (define-key company-active-map (kbd "M-n") nil)
    (define-key company-active-map (kbd "M-p") nil)
    (define-key company-active-map (kbd "C-n") #'company-select-next)
    (define-key company-active-map (kbd "C-p") #'company-select-previous))
  ;; (global-set-key (kbd "C-w") 'backward-kill-word)

  (spacemacs/declare-prefix "o" "+own-menu")
  ;; (spacemacs/declare-prefix "b" "+bookmark")
  (spacemacs/set-leader-keys "os" 'org-save-all-org-buffers)
  (spacemacs/set-leader-keys "oi" 'helm-org-agenda-files-headings)
  (spacemacs/set-leader-keys "oy" 'youdao-dictionary-search-at-point+)
  ;; (spacemacs/set-leader-keys "or" 'recentf-open-files)
  (spacemacs/set-leader-keys "ow" 'occur-dwin)
  (spacemacs/set-leader-keys "obm" 'bookmark-set)
  (spacemacs/set-leader-keys "obl" 'bookmark-bmenu-list)
  (spacemacs/set-leader-keys "ocl" 'evilnc-comment-or-uncomment-lines)
  (spacemacs/set-leader-keys "oj" 'evilmi-jump-items)
  (spacemacs/set-leader-keys "of" 'locate-current-file-in-explorer)
  )

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  )
