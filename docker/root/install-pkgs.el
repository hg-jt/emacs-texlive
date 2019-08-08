;;; install-pkgs.el --- Local Emacs package installation script.

;;; Code:
(package-initialize)

;; configure ELPA repositories
(setq package-archives '(("org" . "https://orgmode.org/elpa/")
                         ("melpa" . "https://melpa.org/packages/")))


;; update package lists
(package-refresh-contents)


;; install packges
(dolist (pkg '(;; install org with contrib directory...workaround for the
               ;; "'org' is already installed" issue see
               ;; https://github.com/jwiegley/use-package/issues/319#issuecomment-186181569
               org-plus-contrib

               ;; add support for exporting org files as reveal.js presentations
               ox-reveal
               htmlize))
  (condition-case nil
      (package-install pkg)
    (error
     (message "WARNING: skipping %s" pkg))))
;;; install.el ends here
