;;; package --- summary
;;; Code:
;;; Cinnebtart:
(deftheme test)

(let ((class '((class color) (min-colors 256)))
	;;; Define color style.
	(aqua				"#005f5f"); Used by selection mode.
	(orange				"#d75f00"))
	(custom-theme-set-faces 'test
	;;	Standard faces.
	`(bold ((,class (:weight bold)))); Bold variant of the default font. 
	`(italic ((,class (:slant italic)))); Italic variant of the default font. 
	`(bold-italic ((,class (:slant italic :weight bold)))); Bold italic variant of the default font. 
	`(underline ((,class (:underline t)))); Underlines text. 
	`(shadow ((,class (:foreground "#5faf87")))); Making the text less noticeable than the surrounding ordinary text.
	;;	Basic faces.
	`(success ((,class (:foreground "brightgreen")))); Text concerning successes in *compilation* buffers.
	`(error ((,class (:foreground "red")))); Text concerning error in *compilation* buffers.
	`(warning ((,class (:foreground "orange")))); Text concerning warning in *compilation* buffers.
	
	;;; Define syntax font.
	;;	CCMode && font-lock-mode.
	`(font-lock-builtin-face ((,class (:foreground "red")))); Built-in functions.
	`(font-lock-comment-delimiter-face ((,class (:foreground "#5faf87" :slant italic)))); Comments delimiters.
	`(font-lock-comment-face ((,class (:foreground "#5faf87" :slant italic)))); Comment face.
	`(font-lock-doc-face ((,class (:foreground "#5faf87" :slant italic)))); Documentation string in the code in Emacs.
	`(font-lock-doc-string-face ((,class (:foreground "yellow")))); Documentation string in the code in XEmacs.
	`(font-lock-function-name-face ((,class (:foreground "brightwhite")))); Name of a function being defined or declared.
	`(font-lock-keyword-face ((,class (:foreground "red")))); Keyword with special syntactic significance, like ‘while’ and ‘if’ in C.
	`(font-lock-negation-char-face ((,class (:foreground "white")))); Easily-overlooked negation characters.
	`(font-lock-reference-face ((,class (:foreground "yellow")))); Used on the names in expressions.
	`(font-lock-constant-face ((,class (:foreground "aqua")))); Builtin constants.
	`(font-lock-preprocessor-face ((,class (:foreground "red")))); Preprocessor directives.
	`(font-lock-string-face ((,class (:foreground "red")))); String and character literals.
	`(font-lock-type-face ((,class (:foreground "blue")))); Types (both predefined and user defined) and classes in type contexts.
	`(font-lock-variable-name-face ((,class (:foreground "brighthite")))); Preprocessor defines without arguments, variables in declarations and definitions, and other identifiers in such variable contexts.
	`(font-lock-warning-face ((,class (:weight bold :foreground "orange")))); Some kinds of syntactic errors are fontified.
	;; Regexp.
	`(font-lock-regexp-grouping-backslash ((,class (:foreground "yellow")))); Regexp with backslash.
	`(font-lock-regexp-grouping-construct ((,class (:foreground "brightcyan")))); Regexp with construct.
	
	;;;	Define syntax highlighting.	
	;;	Define Emacs interface colors.
	;;	Standard faces.
	`(default ((,class (:foregound "white" :background "#000000")))); Ordinary text that doesn't specify any face. Its background color is used as the frame's background color. 
	`(cursor ((,class (:background "white" :foreground, "#000000" :inverse-video, nil)))); Cursor color in window mode.
	`(fringe ((,class (:background "#000000" :foreground "#000000")))); Fringes to the left and right of windows on graphic displays.
	`(vertical-border ((,class (:foreground "#005f5f6")))); Vertical divider between windows on text terminals.
	`(border ((,class (:background "#000000" :foreground "#005f5f6"))))
	`(border-glyph (nil))
	`(highlight ((,class (:inverse-video nil :background "#005f5f6")))); Text highlighting in various contexts, such as when the mouse cursor is moved over a hyperlink. 
	`(gui-element ((,class (:background "#000000"))))
	`(minibuffer-prompt ((,class (:foreground "blue")))); Prompt strings displayed in the minibuffer. 
	`(region ((,class (:background, aqua :inverse-video, nil)))); Displaying an active region.
	`(secondary-selection ((,class (:background "#005f5f6")))); Displaying a secondary X selection.
	`(header-line ((,class (:inherit mode-line-inactive :foreground "aqua" :background nil)))); Similar to mode-line for a window's header line.
	;; Linum-mode.
	`(linum ((,class (:background "#282828" :foreground "grey" :italic nil :underline nil))))
	;; Tabbar mode.
	(set-face-attribute 'tabbar-unselected nil :background "#E9E9E9" :foreground "#000000" :box '(:line-width 5 :color "#E9E9E9" :style nil)); Unselected tab.
	(set-face-attribute 'tabbar-selected nil :background "#FFFFFF" :foreground "#000000" :box '(:line-width 5 :color "#FFFFFF" :style nil)); Selected tab.
	(set-face-attribute 'tabbar-highlight nil :background "#FFFFFF" :foreground "#000000" :underline nil :box '(:line-width 5 :color "#FFFFFF" :style nil))
	(set-face-attribute 'tabbar-button nil :box '(:line-width 1 :color "#FFFFFF" :style nil))
	(set-face-attribute 'tabbar-separator nil :background "#FFFFFF" :height 0.6)
	;; Parenthesis matching (built-in)))
	`(show-paren-match ((,class (:foreground "green"))))
	`(show-paren-mismatch ((,class (:background "red"))))
	))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
			   (file-name-as-directory (file-name-directory load-file-name))))
(provide-theme 'test)
;;; test-theme.el ends here
