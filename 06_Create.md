# 문서 생성하기
마크다운을 이용해서 문서를 생성했다면 문서를 변환하는 과정이 남아있습니다.
이 장에서는 Pandoc을 이용해서 문서를 변환해보는 과정을 다루어보겠습니다.

## Epub 제작하기
Pandoc에 epub파일을 생성할 때 기본값은 epub2 형식을 사용합니다.
Pandoc에서 test.md 파일을 이용해서 epub 파일을 생성하는 예제입니다.

	$ pandoc test.md -o test.epub

epub3 형태의 아웃풋을 하기 위해서는 아래 옵션이 추가되어야 합니다.

	$ pandoc -o test.epub -t epub3 test.md


#### 이 책을 EPUB으로 생성하는 사용 명령어의 예제입니다.
- 매번 반복해서 실행해야 하기때문에 스크립트로 저장해두면 좋습니다.
- 일반적으로 간편하게 sh 파일을 사용하거나 GNU make를 이용해서 처리할 수 있습니다.
- TODO : 아래 예제를 추후 실제 예제로 교체하자.

	pandoc -S -o progit.epub title.txt \
	01-introduction/01-chapter1.markdown \
	02-git-basics/01-chapter2.markdown \
	03-git-branching/01-chapter3.markdown \
	04-git-server/01-chapter4.markdown \
	05-distributed-git/01-chapter5.markdown \
	06-git-tools/01-chapter6.markdown \
	07-customizing-git/01-chapter7.markdown \
	08-git-and-other-scms/01-chapter8.markdown \
	09-git-internals/01-chapter9.markdown

#### 현재경로의 모든 md파일을 처리하기
현재경로에 .md파일이 모여있고 그 정보를 가지고 epub을 생성하고 싶다면
아래 쉘명령을 사용할 수 있습니다.
    
	$ pandoc `ls *.md | sort` -s -o test.epub

## PDF 제작하기
PDF는 이미 많은 사람들이 즐겨 사용하는 문서포멧입니다.
모든 OS에서 문서의 레이아웃이 깨지지 않고,
대부분 별도의 소프트웨어 없이 보기 편해서 많이 사용하는 포멧입니다.
그림과 레이아웃이 중요한 E-book은 보통 PDF로 배포됩니다.
PDF파일을 생성하는 예제는 아래와 같습니다.
명령어가 길게 보일 수 있어서 다음줄에 해당하는 '\' 문자를 넣었습니다.

	pandoc -f markdown -t latex \
	-s -o document.pdf \
	--latex-engine=xelatex \
	--variable mainfont='Nanum Myeongjo' \
	document.md

Pandoc은 PDF를 생성할 LaTex를 이용합니다.
LaTex는 오픈소스 조판시스템(Typesetting System)입니다.
조판은 최종 출력이 되기전에 출력될 결과물에 맞게 도형,글을 배치하는 작업입니다.
LaTex도 여러 버전의 엔진이 있으며 Pandoc에 PDF 처리시 선택할 수 있습니다.
pdflatex와 xelatex중 유니코드와 최신 폰트 처리에는 xelatex가 좋습니다.

Pandoc은 내부적으로 문서를 LaTex로 변환하고 PdfLaTex 또는 XeLaTex를 통해서 PDF가 생성되는 형태입니다.

## Docx 제작하기
일반 사용자의 경우 마이크로소프트 오피스 포멧인 docx 파일이 익숙합니다.
우리나라는 출판사에서 교정확인을 위해 docx형태를 요청하는 경우도 많이 있습니다.
아래는 docx 파일을 생성하는 예제 입니다.

	$ pandoc -t docx -s -o document.docx document.md

## ODT 제작하기
여러분의 업무환경이 리눅스라면 아래 나열한 툴들을 사용할 확률이 있습니다.
아래는 odt 파일을 생성하는 예제 입니다.
	
	$ pandoc -t odt -s -o document.odt document.md

## MOBI & 아마존
Mobi는 아마존 킨들용 E-book포멧입니다.
epub파일을 킨들에 넣을 수 없습니다.
테스트환경 : macOS Sierra 10.12.2
제 환경에서는 Send To Kindle을 제외한 나머지 소프트웨들이 잘 작동되지 않았습니다.

### KindleGen
KindleGen 소프트웨어는 html,xhtml,epub 파일을 mobi파일로 바꾸어주는 커맨드라인 툴입니다.
아래 사이트에서 다운로드가 가능합니다.

	http://www.amazon.com/kindleformat/kindlegen

### KindlePreviewer
문서가 킨들에 어떻게 보이는지 볼 수 있는 툴입니다.
윈도우용, 맥용만 존재합니다.

	http://www.amazon.com/kindleformat/kindlepreviewer

### Send to Kindle
킨들로 문서를 보낼 수 있습니다. 아쉽게도 epub 지원하지 않습니다.
지원포멧은 doc, docx, pdf, txt, ptf 입니다.
Send To Kindle 소프트웨어를 다운로드 받을 수 있는 사이트입니다.

	https://www.amazon.com/gp/sendtokindle
