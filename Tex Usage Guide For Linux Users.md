# Usage Guide For Linux Users

## Generating the pdf of the notes

You'll need to use LuaLaTeX. To check if you have it, see if the command `whereis lualatex` prints any output.

Place the `slnotes.cls` in the same folder as the TeX file. Then run `lualatex --shell-escape <filename>` to convert the TeX file to PDF.

## Converting SVGs to PDFs

Sometimes, there will be SVG files. You'll need to convert them to PDF. There is a short script below to automate the conversion process using Inkscape (you'll need to install Inkscape first if you don't have it). 

Place the script and the SVG files in the same folder, then run the script to get the PDF versions.

```bash
#!/bin/bash

for VARIABLE in *.svg
do
    TEMP=$(basename $VARIABLE .svg)
    cat "${TEMP}.svg" | inkscape --pipe --export-filename="${TEMP}.pdf"
done
```
