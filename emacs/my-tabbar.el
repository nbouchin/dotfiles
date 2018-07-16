;;; PACKAGE-ARCHIVES -- Summary.
;;; Commentary:

;;; Code:
(require 'tabbar)

(tabbar-mode 1)
(setq tabbar-use-images nil)
(set-face-attribute
 'tabbar-default nil
 :background "gray15"
 :foreground "white"
 :box '(:line-width 1 :color "gray15" :style nil)
 )
(set-face-attribute
 'tabbar-selected nil
 :background "gray30"
 :foreground "white"
 :box '(:line-width 1 :color "gray30" :style nil)
 )
(set-face-attribute
 'tabbar-unselected nil
 :background "gray15"
 :foreground "white"
 :box '(:line-width 1 :color "gray15" :style nil)
 )
(set-face-attribute
 'tabbar-modified nil
 :background "gray15"
 :box '(:line-width 1 :color "gray15" :style nil)
 )
(set-face-attribute
 'tabbar-selected-modified nil
 :background "gray30"
 :box '(:line-width 1 :color "gray30" :style nil)
 )
(set-face-attribute
 'tabbar-button nil
 :background "gray15"
 :box '(:line-width 1 :color "gray15" :style nil)
 )
