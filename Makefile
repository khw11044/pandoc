# 책이름
BOOK = pandoc

# 문서가 생성될 경로
EXPORT_DIR = publish

# 책의 내용
CONTENTS = title.txt \
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

makedir:
	mkdir -p $(EXPORT_DIR)
pdf: makedir
	pandoc --toc -S --epub-chapter-level 2 \
	--webtex -t latex --latex-engine=xelatex \
	--variable mainfont='Nanum Myeongjo' \
	-c style.css \
	-o $(EXPORT_DIR)/$(BOOK).pdf \
	$(CONTENTS)
epub: makedir
	pandoc --toc -S --epub-chapter-level 2 \
	--epub-stylesheet style.css \
	--epub-cover-image figures/cover_600x800.jpg \
	--webtex -t epub3 \
	-o $(EXPORT_DIR)/$(BOOK).epub \
	$(CONTENTS)
docx: makedir
	pandoc --toc -S --webtex -t docx \
	-o $(EXPORT_DIR)/$(BOOK).docx \
	$(CONTENTS)
odt: makedir
	pandoc --toc -S -t odt \
	-o $(EXPORT_DIR)/$(BOOK).odt \
	$(CONTENTS)
html: makedir
	cp -rf figures $(EXPORT_DIR)
	cp -f style.css $(EXPORT_DIR)
	pandoc -s -S --toc -c style.css \
	-o $(EXPORT_DIR)/$(BOOK).html \
	$(CONTENTS)
all: pdf epub docx odt html
clean:
	rm -rf $(EXPORT_DIR)
