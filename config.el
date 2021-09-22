;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!
;; arrow key navigation for windows
(map! :map evil-window-map
      "<up>" #'evil-window-up
      "<down>" #'evil-window-down
      "<left>" #'evil-window-left
      "<right>" #'evil-window-right)

;; expand-region (visual-mode only)
(map! :v "+" #'er/expand-region)

;; vim-vinegar-esque binding
(map! :n "-" #'dired-jump)

;; Re-enable `C-i' being move forward
(map! :n "C-i" #'better-jumper-jump-forward)

;; disable projectile caching so new files can be found
(setq projectile-enable-caching nil)

;; get flycheck highlighting to work in terminal (can't do underlines in terminal)
(custom-set-faces! `(flycheck-error :background "color-160"))
(custom-set-faces! `(flycheck-warning :background "#ECBE7B"))
(custom-set-faces! `(flycheck-info :background "#49658D"))

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox)

;; Open dired when switching to a project
(setq +workspaces-switch-project-function 'dired)

;; Open dired at current directory when opening emacs
(setq initial-buffer-choice nil)

;; Enable lsp-ui-doc-mode by default
(after! lsp-ui
  (setq lsp-ui-doc-enable t))

;; TODO: remove after figuring out what's wrong with solargraph + lsp-mode
(after! lsp-ui
  (setq lsp-log-io t))

;; Configure files to use to detect project root
(after! projectile
  (add-to-list 'projectile-project-root-files-bottom-up "go.mod"))

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Allows for full support of `.dir-locals.el'
(setq-default enable-local-variables t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
