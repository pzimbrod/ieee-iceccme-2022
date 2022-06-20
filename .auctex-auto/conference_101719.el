(TeX-add-style-hook
 "conference_101719"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("IEEEtran" "conference" "final")))
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
   (LaTeX-add-environments
    '("IEEEbiography" LaTeX-env-args ["argument"] 1))
   (LaTeX-add-bibliographies
    "mybibfile")
   (LaTeX-add-pagestyles
    "IEEEtitlepagestyle"))
 :latex)

