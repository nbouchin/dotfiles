;;; package --- summary
;;; Code:
;;; Commentary:
(deftheme nbouchin)

(let ((class '((class color) (min-colors 256)))
      (background   "#080808")
      (current-line "#333333")
      (highlight    "#333333")
      (selection    "#5b8583")
      (contrast-bg  "#5b8583")
      (foreground   "#CBCBCB")
      (comment      "#5C906F")
      (red          "#ff8787")
      (orange       "#cc8800")
      (yellow       "#d0770f")
      (green        "#5B866D")
      (brightgreen  "#537D01")
      (aqua         "#5b8583")
      (blue         "#86aed5")
      (offwhite     "#E0E0E0")
      (purple       "#5fafaf"))

  (custom-theme-set-faces
   'nbouchin
   `(default ((,class (:foreground ,foreground :background ,background))))
   `(bold ((,class (:weight bold))))
   `(bold-italic ((,class (:slant italic :weight bold))))
   `(underline ((,class (:underline t))))
   `(italic ((,class (:slant italic))))
   `(font-lock-builtin-face ((,class (:foreground ,red))))
   `(font-lock-comment-delimiter-face ((,class (
	:foreground ,comment :slant italic))))
   `(font-lock-comment-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-doc-face ((,class (:foreground ,purple))))
   `(font-lock-doc-string-face ((,class (:foreground ,yellow))))
   `(font-lock-function-name-face ((,class (:foreground ,offwhite))))
   `(font-lock-keyword-face ((,class (:foreground ,red)))) ; while | if | return
   `(font-lock-negation-char-face ((,class (:foreground "#afafaf"))))
   `(font-lock-reference-face ((,class (:foreground ,yellow))))
   `(font-lock-constant-face ((,class (:foreground ,aqua))))
   `(font-lock-preprocessor-face ((,class (:foreground ,red)))) ; define
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,yellow))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,purple))))
   `(font-lock-string-face ((,class (:foreground ,red)))) ; string
   `(font-lock-type-face ((,class (:foreground ,blue)))) ; type
   `(font-lock-variable-name-face ((,class (:foreground ,offwhite))))
   `(font-lock-warning-face ((,class (:weight bold :foreground ,orange))))
   `(shadow ((,class (:foreground ,comment))))
   `(success ((,class (:foreground ,brightgreen))))
   `(error ((,class (:foreground ,red))))
   `(warning ((,class (:foreground ,orange))))

;;; Emacs interface:
   `(cursor ((,class (:background "#626262"))))
   `(fringe ((,class (:background, background :foreground "#878787"))))
   `(linum ((,class (:background, background :foreground "#878787"
	:italic nil :underline nil))))
   `(vertical-border ((,class (:foreground ,contrast-bg))))
   `(border ((,class (:background ,contrast-bg :foreground ,highlight))))
   `(border-glyph (nil))
   `(highlight ((,class (:inverse-video nil :background ,highlight))))
   `(gui-element ((,class (:background, contrast-bg))))
      `(minibuffer-prompt ((,class (:foreground ,blue))))
   `(region ((,class (:background, selection, :inverse-video, nil))))
   `(secondary-selection ((,class (:background ,highlight))))
   `(header-line ((,class (:inherit mode-line-inactive :foreground ,
	aqua :background nil))))
   
;;; Infor bar interface:
   `(mode-line ((,class (:background "white" :weight normal
	:foreground, background))))
   `(mode-line-buffer-id ((,class (:foreground "black" :background nil))))
   `(mode-line-inactive ((,class(:inherit mode-line:
	comment :background ,highlight :weight normal))))
   `(mode-line-emphasis ((,class (:foreground ,foreground :slant italic))))
   `(mode-line-highlight ((,class (:foreground ,purple :box nil :weight bold))))

;;; Search interface:
   `(match ((,class (:foreground, green :background ,background :inverse-video t))))
   `(isearch ((,class (:foreground, green
	:background ,background :inverse-video t))))
   `(isearch-lazy-highlight-face ((,class (:foreground, green
	:background ,background :inverse-video t))))
   `(isearch-fail ((,class (:background ,background
	:inherit font-lock-warning-face :inverse-video t))))
   
;;; Tabbar interface:
   (set-face-attribute 'tabbar-default nil :background "white"
	:foreground "gray20" :box'(:line-width 1 :color "gray20" :style nil))
   (set-face-attribute 'tabbar-unselected nil :background "white"
	:foreground "black" :box '(:line-width 5 :color "gray30" :style nil))
   (set-face-attribute 'tabbar-selected nil :background "gray76"
	:foreground "black" :box '(:line-width 5 :color "gray20" :style nil))
   (set-face-attribute 'tabbar-highlight nil :background "white"
	:foreground "black" :underline nil :box '(:line-width 5 :color "white" :style nil))
   (set-face-attribute 'tabbar-button nil :box '(:line-width 1
	:color "gray20" :style nil))
   (set-face-attribute 'tabbar-separator nil :background "gray20" :height 0.6)
))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))
(provide-theme 'nbouchin)
;;; nbouchin-theme.el ends here
