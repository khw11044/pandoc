makedir:
	mkdir publish
pdf: makedir
	pandoc --toc -S --epub-chapter-level 2 \
	--epub-stylesheet style.css \
	--epub-cover-image figures/cover_600x800.jpg \
	--webtex -t latex --latex-engine=xelatex \
	--variable mainfont='Nanum Myeongjo' \
	-o publish/pandoc.pdf title.txt \
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
	13_OpenSource.md \
	14_Epilogue.md
epub: makedir
	pandoc --toc -S --epub-chapter-level 2 \
	--epub-stylesheet style.css \
	--epub-cover-image figures/cover_600x800.jpg \
	--webtex -t epub3 -o publish/pandoc.epub title.txt \
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
	13_OpenSource.md \
	14_Epilogue.md
docx: makedir
	pandoc --toc -S \
	--webtex -t docx -o publish/pandoc.docx title.txt \
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
	13_OpenSource.md \
	14_Epilogue.md
odt: makedir
	pandoc --toc -S \
	-t odt -o publish/pandoc.odt title.txt \
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
	13_OpenSource.md \
	14_Epilogue.md
html: makedir
	pandoc -s -S --toc \
	--css style.css \
	-o publish/pandoc.html title.txt \
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
	13_OpenSource.md \
	14_Epilogue.md
	cp -rf figures publish
	cp style.css publish
all: pdf epub docx odt html
clean:
	rm -rf publish
