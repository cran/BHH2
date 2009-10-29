(TeX-add-style-hook "BHH2"
 (lambda ()
    (LaTeX-add-bibliographies)
    (TeX-add-symbols
     '("subsectionF" 1)
     '("pkg" 1)
     '("code" 1)
     "R")
    (TeX-run-style-hooks
     "geometry"
     "natbib"
     "round"
     "amsmath"
     "Sweave"
     "latex2e"
     "art10"
     "article"
     "letterpaper")))

