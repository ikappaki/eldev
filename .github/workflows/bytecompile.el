(progn
  (require 'bytecomp)
  (let ((byte-compile-error-on-warn t))
    (push default-directory load-path)
    (unless (and (byte-compile-file "eldev-util.el")
                 (byte-compile-file "eldev.el")
                 (byte-compile-file "eldev-ert.el")
                 (byte-compile-file "eldev-buttercup.el")
                 (byte-compile-file "eldev-plugins.el"))
      (kill-emacs 1))))
