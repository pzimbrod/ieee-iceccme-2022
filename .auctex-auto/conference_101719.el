(TeX-add-style-hook
 "conference_101719"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("IEEEtran" "conference" "final")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "IEEEtran"
    "IEEEtran10"
    "blindtext"
    "eso-pic"
    "cite"
    "amsmath"
    "amssymb"
    "amsfonts"
    "algorithmic"
    "graphicx"
    "url"
    "orcidlink"
    "siunitx"
    "textcomp"
    "xcolor")
   (TeX-add-symbols
    '("conf" 1)
    '("AtPageUpperMyright" 1)
    "mycopyrightnotice"
    "BibTeX")
   (LaTeX-add-labels
    "eq:stress-tensor"
    "eq:sigmadiff")
   (LaTeX-add-bibliographies
    "mybibfile")
   (LaTeX-add-pagestyles
    "IEEEtitlepagestyle"))
 :latex)

