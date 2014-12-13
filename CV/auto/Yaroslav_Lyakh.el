(TeX-add-style-hook "Yaroslav_Lyakh"
 (lambda ()
    (TeX-add-symbols
     '("emp" 1)
     '("profileItem" 2)
     '("osection" 1)
     '("jobdes" 4))
    (TeX-run-style-hooks
     "fancyhdr"
     "enumitem"
     "inputenc"
     "utf8"
     "fontenc"
     "T1"
     "scalefnt"
     "needspace"
     "hyperref"
     "helvetica"
     "latex2e"
     "res10"
     "res"
     "")))

