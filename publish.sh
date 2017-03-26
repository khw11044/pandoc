pandoc --toc -S --epub-chapter-level 2 \
--epub-stylesheet style.css \
--epub-cover-image figures/cover_600x800.jpg \
--webtex -t epub3 -o pandoc.epub title.txt \
01_Preface.md \
02_Introduction.md \
03_Pandoc.md \
04_Markdown.md \
05_Epub.md \
06_Create.md \
07_Image.md \
08_Cover.md \
09_PandocArgv.md \
10_Math.md \
11_Style_Metadata.md \
12_Reference.md \
OpenSource.md \
Epilogue.md


