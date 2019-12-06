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
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------

     ;; languages layers
     html
     ;; (javascript :variables javascript-backend 'lsp)
     ;; lsp
     ;; c-c++
     ;; cmake
     emacs-lisp
     ;; rust
     ;; (python :variables
     ;;     python-backend 'lsp
     ;;     python-format-on-save nil
     ;;     python-formatter 'black
     ;;     python-fill-column 99)
     ;; yaml
     ;; shell-scripts
     markdown
     latex
     ;; graphviz
     ;; restructuredtext
     ;; csv
     ;; react


     ;; tools layers
     ;; sphinx
     ;; pandoc
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
          org-journal-dir "~/mydocs/org/journal/"
          org-journal-file-format "%Y-%m-%d"
          org-journal-date-prefix "#+TITLE: "
          org-journal-date-format "%A, %B %d %Y"
          org-journal-time-prefix "* "
          org-journal-time-format ""
          org-projectile-file "TODOs.org"
          )
     ;; spacemacs-org
     autohotkey
     ;; (shell :variables
     ;;    shell-default-height 50
     ;;    shell-default-position 'bottom
     ;;    shell-default-shell 'ansi-term
     ;;    shell-default-term-shell "~/bin/zsh")
     (spell-checking :variables
                     spell-checking-enable-by-default nil
                     enable-flyspell-auto-completion t)
     (syntax-checking :variables
                      syntax-checking-enable-by-default nil
                      syntax-checking-enable-tooltips nil)
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
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'complete
                      auto-completion-idle-delay 0.08
                      company-minimum-prefix-length 1
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t
                      :disabled-for org markdown)


     ;; better config layers
     better-defaults
     (spacemacs-layouts :variables layouts-enable-autosave nil
                        layouts-autosave-delay 300)
     (chinese :variables
              chinese-default-input-method 'pinyin
              ;; chinese-enable-fcitx t
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
                                      ;; doom-modeline
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    ;; vi-tilde-fringe
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
                                ;; (recents . 5)
                                (projects . 7)
                                )
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         dracula
                         monokai
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
                               :size 14
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
  ;; (add-to-list 'load-path "~/.emacs.d/lisp/")
  (require 'beacon)
  (beacon-mode t)

  ;;##########################################################################
  ;; 解决org表格中英文对齐的问题
  (when (configuration-layer/layer-usedp 'chinese)
    (when (and (spacemacs/system-is-mswindows) window-system)
      (spacemacs//set-monospaced-font "Source Code Pro" "Microsoft YaHei" 14 16)))

  ;; Setting Chinese Font
  ;;(when (and (spacemacs/system-is-mswindows) window-system)
  ;;  (setq ispell-program-name "aspell")
  ;;  (setq w32-pass-alt-to-system nil)
  ;;  (setq w32-apps-modifier 'super)
  ;;  (dolist (charset '(kana han symbol cjk-misc bopomofo))
  ;;    (set-fontset-font (frame-parameter nil 'font)
  ;;                      charset
  ;;                      (font-spec :family "Microsoft Yahei" :size 14))))

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
    (setq org-todo-keywords
          '((sequence "TODO(t!)" "NEXT(n!)" "DOINGNOW(d!)" "BLOCKED(b!)"
                      "TODELEGATE(g!)" "DELEGATED(D!)" "FOLLOWUP(f!)"
                      "TICKLE(T!)" "|" "CANCELLED(c!)"
                      "DONE(F!)")))

    (setq org-todo-keyword-faces
          '(("TODO" . org-warning)
            ("DOINGNOW" . "#E35DBF")
            ("CANCELED" . (:foreground "white" :background "#4d4d4d" :weight bold))
            ("DELEGATED" . "pink")
            ("NEXT" . "#008080")))

    (setq org-agenda-files '("~/mydocs/org"))
    (setq org-src-fontify-natively t)
    (setq org-capture-templates
          '(("t" "Todo" entry (file+headline "~/mydocs/org/notes.org" "CaptureNotes")
             "* TODO [#B] %?\n  %i\n"
             :empty-lines 1)))
    )

  (with-eval-after-load 'org-agenda
    (require 'org-projectile)
    (mapcar #'(lambda (file)
                (when (file-exists-p file)
                  (push file org-agenda-files)))
            (org-projectile-todo-files))
    )

  ;; Org mode settings
  ;;  (setq org-directory "~/mydocs/org/")
  ;;  (setq org-default-notes-file (concat org-directory "tasks.org"))
  ;;  (setq org-todo-keywords '((sequence "TODO" "PROGRESS" "|" "DONE" "DELEGATED" "CANCELLED")))
  ;;  (setq org-refile-targets
  ;;        '((nil :maxlevel . 1)
  ;;          (org-agenda-files :maxlevel . 1)))

  (setq company-show-numbers t)
  (setq flycheck-check-syntax-automatically '(new-line save))
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

  (add-hook 'doc-view-mode-hook 'auto-revert-mode)

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

  (recentf-mode 1)
  (setq recentf-max-menu-items 25)

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
  ;; (require 'popwin)
  ;; (popwin-mode t)

  (require 'yasnippet)
  (yas-reload-all)
  (add-hook 'prog-mode-hook #'yas-minor-mode)



  ;;##########################################################################
  ;; my own keymaps
  (define-key global-map (kbd "C-c y") 'youdao-dictionary-search-at-point+)
  (define-key global-map (kbd "C-x C-r") 'recentf-open-files)

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
  (spacemacs/set-leader-keys "or" 'recentf-open-files)
  (spacemacs/set-leader-keys "ow" 'occur-dwin)
  (spacemacs/set-leader-keys "obm" 'bookmark-set)
  (spacemacs/set-leader-keys "obl" 'bookmark-bmenu-list)
  (spacemacs/set-leader-keys "ocl" 'evilnc-comment-or-uncomment-lines)
  (spacemacs/set-leader-keys "oj" 'evilmi-jump-items)
  )

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  )
