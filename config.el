;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; arrow key navigation for windows
(map! :map evil-window-map
      "<up>" #'evil-window-up
      "<down>" #'evil-window-down
      "<left>" #'evil-window-left
      "<right>" #'evil-window-right)

;; arrow key and bracket navigation for tabs
(map! :map evil-normal-state-map
      "g <left>" #'+tabs:previous-or-goto
      "g <right>" #'+tabs:next-or-goto
      "g [" #'+tabs:previous-or-goto
      "g ]" #'+tabs:next-or-goto)

;; arrow key navigation for workspaces
(map! :map doom-leader-workspace-map
      "<left>" #'+workspace/switch-left
      "<right>" #'+workspace/switch-right)

;; arrow key navigation for buffers
(map! :map doom-leader-buffer-map
      "<left>" #'previous-buffer
      "<right>" #'next-buffer)

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

;; Enable lsp-ui-doc-mode by default
(after! lsp-ui
  (setq lsp-ui-doc-enable t))

;; TODO: `setq' or `setq-default'?
;; (setq gcmh-high-cons-threshold 134217728)
;; (setq read-process-output-max (* 4 1024 1024))

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
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
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
