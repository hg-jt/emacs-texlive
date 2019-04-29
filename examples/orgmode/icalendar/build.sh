#!/usr/bin/emacs --script
; -*- mode: elisp -*-
(package-initialize)  ; initalize the ELPA packages, which are turned
                      ; off by default with the --script option.


;; configure org-mode
(setq make-backup-files nil
      org-agenda-files '("/docs/agendas")
      org-agenda-default-appointment-duration 30
      org-icalendar-use-scheduled '(event-if-not-todo)
      org-icalendar-combined-agenda-file "/docs/org2ical-combined.ics")


;; generate ics files
(org-mode)
(org-icalendar-export-agenda-files)
(org-icalendar-combine-agenda-files)
