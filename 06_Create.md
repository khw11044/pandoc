
# Epub 생성
마크다운을 이용해서 문서를 생성했다면 Pandoc을 이용해서 epub 문서로 변환하는 과정이 남아있습니다.
이 장에서는 Pandoc을 이용해서 어떻게 epub을 생성할 수 있는지 알아보겠습니다.

## Epub 제작하기
Pandoc에서 epub 문서를 생성할 때 기본 포멧은 epub2 형식입니다.
Pandoc에서 test.md 파일을 epub 파일로 변환하는 예제입니다.

	$ pandoc test.md -o test.epub

epub3 형태의 아웃풋을 하기 위해서는 아래 옵션이 추가되어야 합니다.

	$ pandoc -o test.epub -t epub3 test.md

## 여러 마크다운 문서를 하나의 epub문서로 만들기
여러분이 책을 작성한다면 아마도 많은 수의 마크다운문서가 생성되어 있을 것입니다.
preface.md, intro.md 2개의 마크다운 문서를 epub문서로 변환하는 예제입니다.

	$ pandoc -S -o output.epub preface.md intro.md

명령어의 맨 뒤에 책의 순서대로 마크다운 파일을 나열해주면 됩니다. 그리고 여러문서를 묶는 뜻으로 -S 옵션을 넣어주세요.

#### 스크립트 만들기
점점 마크다운 문서가 많아진다면 위 예제처럼 매번 명령어를 반복해서 타이핑후 epub 파일을 만드는 것은 번거롭습니다. 간편하게 sh 스크립트 파일만들어서 사용하거나 GNU make를 이용해서 epub 파일 생성을 자동화 할 수 있습니다. make를 활용하는 방법은 이 책의 레퍼런스 장에서 다룹니다. 이 책은 publish.sh 라는 파일을 생성하고 내용은 아래 처럼 구성했습니다.

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
	12_Reference.md

	
위에서 생성한 publish.sh 파일을 실행하면 같은 경로에 epub파일이 생성됩니다.
터미널에서 실행하는 방법은 아래와 같습니다.

	$ sh publish.sh

#### 현재경로의 md 파일로 epub 만들기
현재경로에 .md 파일이 모여있고 모든 파일을 이용해서 epub을 생성하고 싶다면, 아래 명령을 사용할 수 있습니다.
    
	$ pandoc `ls *.md | sort` -s -o test.epub

위 명령어는 유용해 보이지만, 책을 제작할 때 내용을 구성하고 목차를 생성하는 과정이 있기 때문에 많이 사용되는 형태는 아닙니다.


## PDF 제작하기
PDF는 이미 많은 사람들이 즐겨 사용하는 문서포멧입니다.
Pandoc은 마크다운문서를 PDF로 변환이 가능합니다.
PDF의 장점은 모든 OS에서 문서의 레이아웃이 깨지지 않고, 현대 컴퓨터 환경에서는 별도의 소프트웨어 없이 내용을 볼수있는 포멧입니다. 그림과 레이아웃이 중요한 E-book은 보통 PDF로 배포됩니다.
PDF파일을 생성하는 예제는 아래와 같습니다.
명령어가 길게 보일 수 있어서 다음줄로 넘기는 표식으로 '\' 문자를 사용하였습니다.

	pandoc -f markdown -t latex \
	-s -o document.pdf \
	--latex-engine=xelatex \
	--variable mainfont='Nanum Myeongjo' \
	document.md

조금은 특수한 옵션들이 몇몇 보입니다.
Pandoc은 PDF를 생성할 LaTex를 이용합니다.
LaTex는 오픈소스 조판시스템(Typesetting System)입니다.
조판은 최종 출력이 되기전에 출력될 결과물에 맞게 도형,글을 배치하는 작업입니다.
LaTex도 여러 버전의 엔진이 있으며 Pandoc에 PDF 처리시 선택할 수 있습니다.
pdfLaTex,luaLaTex,xeLaTex가 있습니다. 엔진들중 유니코드와 최신 폰트 처리에는 xeLaTex가 좋습니다.

Pandoc은 내부적으로 문서를 LaTex로 변환하고 이후 LaTex Engine을 통해서 PDF가 생성되는 형태입니다.

나눔명조 파일받기 : https://smartfonts.com/nanum.font?style=myeongjo

## Docx 제작하기
대부분 많은 사용자들 마이크로소프트 오피스 포멧인 docx 파일이 익숙합니다. 우리나라는 출판사에서 교정확인을 위해 docx형태를 요청하는 경우도 많이 있습니다. 아래는 마크다운 문서를 docx 파일을 생성하는 예제 입니다.

	$ pandoc -t docx -s -o document.docx document.md

## ODT 제작하기
여러분의 업무환경이 리눅스라면 워드프로세스 툴로 OpenOffice, LibreOffice를 사용할 수 있습니다. 소개한 툴은 odt라는 파일을 이용해서 문서를 저장하는 툴입니다. Pandoc도 odt파일로 변환을 할 수 있습니다. 아래는 마크다운 문서를 odt 파일을 생성하는 예제입니다.
	
	$ pandoc -t odt -s -o document.odt document.md

## MOBI 포멧 & 아마존 킨들
.mobi 확장자를 가진 문서는 아마존 킨들용 E-book 포멧입니다.
epub파일을 아마존 킨들에 바로 넣을 수 없습니다. 
킨들에 넣기 위해서는 전용파일인 .mobi 포멧으로 변환해야 합니다.
아마존에서 소개하는 유틸리티를 이용해서 컨버팅해 보았지만 개인적으로 좋은 결과를 얻을 수 없었습니다.

- 제 테스트환경 : macOS Sierra 10.12.2
- 위 환경에서는 Send To Kindle 유틸리티를 제외한 나머지 소프트웨들이 잘 작동되지 않았습니다.

### KindleGen
KindleGen 소프트웨어는 html,xhtml,epub 파일을 mobi파일로 바꾸어주는 커맨드라인 툴입니다.
아래 사이트에서 다운로드가 가능합니다.

- 다운로드 사이트 : http://www.amazon.com/kindleformat/kindlegen

### KindlePreviewer
epub 문서가 아마존 킨들에서 어떻게 보이는지 미리 볼 수 있는 툴입니다. 윈도우용, 맥용만 존재합니다.

- 다운로드 사이트 : http://www.amazon.com/kindleformat/kindlepreviewer

### Send to Kindle
문서를 킨들로 전송하기 위한 유틸리티입니다. 아쉽게도 epub 지원하지 않습니다. 지원되는 포멧은 doc, docx, pdf, txt, ptf 입니다.

- 다운로드 사이트 : https://www.amazon.com/gp/sendtokindle

