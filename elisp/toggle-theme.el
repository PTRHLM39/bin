;;; Package --- Summary

;;; Commentary:
;; Toggle themes with a key-sequence.

;; e.g bind: (global-set-key (kbd "C-c t") 'toggle-theme)

;;; Code:

(defvar *theme-dark*    'kaolin-dark) ; Define your set of themes.
(defvar *theme-light*  'kaolin-light)
(defvar *current-theme* *theme-light*)

(defadvice load-theme (before theme-dont-propagate activate)
  "Disable theme before loading another."
  (mapcar #'disable-theme custom-enabled-themes))

(defun next-theme (theme)
  "Toggle next THEME."
  (if (eq theme 'default)
      (disable-theme *current-theme*)
    (progn
      (load-theme theme t)))
  (setq *current-theme* theme))

(defun toggle-theme ()
  "Conditioning toggle through theme-list."
  (interactive)
  (cond ((eq *current-theme* *theme-dark*)  (next-theme *theme-light*))
	((eq *current-theme* *theme-light*) (next-theme 'default))
	((eq *current-theme* 'default)      (next-theme *theme-dark*))))

(provide 'toggle-theme.el)

;;; toggle-theme.el ends here

