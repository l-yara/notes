(TeX-add-style-hook "Yaroslav_Lyakh"
 (lambda ()
    (TeX-add-symbols
     '("profileItem" 2)
     '("osection" 1)
     '("aggjobdes" 4)
     '("jobdes" 4)
     '("emp" 1))
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

