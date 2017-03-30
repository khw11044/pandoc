
# References
이 장은 E-Book을 제작하면서 사용해본 툴이나 관련된 프로젝트를 다룹니다.
E-book을 제작하기 전 경험 또는 레퍼런스 자료로 각 주제별로 다루고 있습니다.

## Progit
Git 프로그램 사용법을 알려주는 Progit 이라는 책 Git을 배우려는 사람들에게 인기있는 책입니다.
상세하게 Git을 알려주고 있으며, HTML, E-book은 무료로 배포하고 있기 때문입니다.
Progit E-book책 작업에도 pandoc이 이용되었습니다.
실제 진행중인 Progit 프로젝트를 git을 이용해서 다운받아 보면 유용한 팁들을 발견할 수 있습니다.
또한 책을 작성하면서 사용된 테크닉들을 [http://pandoc.org/epub.html](http://pandoc.org/epub.html) 사이트에서도 다루고 있습니다.

## Troff
브라이언 커닝헌이 책을 작성할 때 사용하는 유틸리티입니다. 벨연구소에서 최초 제작된 유틸리티 입니다.
이 툴을 만든 이유는 직관적으로 자신이 원하는 위치에 원하는 문자,모양을 넣기 위해서라고 합니다.
비슷한 명령어로는 Troff, Nroff, Groff가 있습니다. 나열한 명령어중에 nroff라는 명령어는 "troff -N" 명령어와 실제로 같습니다.
이 챕터에서는 간단하게 Groff(GNU Troff)를 사용해서 PostScript 파일을 제작하는 방법까지만 다룹니다.
몇가지 테스트를 진행 했지만 개인적으로 Pandoc 솔루션이 현대적이며 개인적으로 마음에 듭니다.

- 프로젝트 홈페이지 : http://www.troff.org
- 메뉴얼 : http://cm.bell-labs.com/sys/doc/troff.pdf

#### PostScript란?
PostScript는 문서를 프린팅하기 위한 페이지 기술 언어중 하나입니다.
포토샵으로 유명한 Adobe를 설립한 존 워낙(John Warnock)과 
찰스 게시케(Charlse Geschke)가 제작했습니다.
과거에는 하드웨에서 PostScript 해석해서 인쇄했지만 요즘은 운영체제나 응용프로그램 레벨에서 PostScript를
처리하기 때문에 PostScript를 지원하는 프린터도 과거에 비해서 줄고 있습니다.
과거에 많이 사용된 포멧이지만 역사적으로 천천히 PDF에게 자리를 내주었습니다.
확장자는 .ps파일을 사용하며 아래에서 Groff를 이용해서 .ps 파일을 생성해 보겠습니다.

#### Groff(GNU Troff)사용하기
아래 내용을 에디터를 이용해서 inputfile로 저장합니다.

	Title : How to use Groff
	.ps 14
	Groff (GNU troff) is a typesetting system that reads plain text mixed with formatting commands and produces formatted output.


inputfile을 이용해서 PostScript 파일을 생성해보겠습니다.
기본적으로 한글을 사용하면 텍스트가 깨집니다.
추가적으로 셋팅을 하면 한글의 사용이 가능하지만 Pandoc보다는 모든 면에서 번거롭습니다.
터미널을 띄우고 아래 명령을 타이핑하면 output.ps가 생성됩니다.

	$ groff inputfile > output.ps


## Make
make는 파일 그룹관리 유틸리티 입니다.
굉장히 추상적인 문장입니다.
쉬운 예로 설명해보겠습니다.
그림을 그리려면 물감과 붓이 필요합니다. 물감과 붓이 없다면 구입해야합니다.
만약 물감과 붓을 이미 가지고 있다면 구입할 필요는 없습니다.
물감과 붓은 그림을 그리는 행동에 대한 필요 조건입니다.
우리가 어떤 행동을 할 때 필요 조건들이 있습니다.
이 필요조건을 Makefile 파일에 잘 작성하면
make가 필요조건들을 파악하고 Makefile에 적힌 대로 업무를 잘 진행해줍니다.
한마디로 쉽게 자동화 할 수 있습니다.

이러한 특징을 가지고 있는 make명령어를 문서를 제작할 때도 사용할 수 있습니다.
마크다운 문서를 이용해서 여러타입의 문서로 변환해야할 때 Makefile을 만들어 두면 편리합니다.
이전 장에서 publish.sh 파일을 다루어서 epub을 쉽게 제작하는 방법을 잠깐 소개했습니다.
하지만 규모가 있는 문서작업에서 저는 Makefile을 작성하는 방식을 더 선호합니다.
아래는 예제로 나열한 make 명령어는 제가 Makefile 작성하고 어떻게 사용하는지 사용법을 먼저 다룹니다.
그리고 다음 챕터에서 실제로 구현된 Makefile을 설명하겠습니다.

pdf를 생성합니다.

	$ make pdf

epub 문서를 생성합니다.

	$ make epub

html 문서를 생성합니다.

	$ make html

docx 문서를 생성합니다.

	$ make docx

odt 문서를 생성합니다.

	$ make odt

pdf와 epub문서를 생성합니다.

	$ make pdf epub

위에 나열된 모든 문서를 생성합니다.
	
	$ make all

문서가 생성된 경로를 삭제합니다.
	
	$ make clean

#### Makefile 작성법
위에서 다룬 간단한 명령어들이 작동되기 위해서 Makefile을 작성할 필요가 있습니다.
Makefile을 작성하면 Pandoc을 이용해서 여러 타입의 문서를 자동 생성할 수 있습니다.
Makefile을 작성할 때는 반드시 Tab을 이용해서 들여쓰기를 해야합니다.
아래는 적힌 예제 코드는 위 기능이 동작하는 실제 Makefile 코드입니다.
Makefile은 예민합니다. 오류가 있다면 make 명령어가 작동되지 않습니다.
아래 코드는 리눅스와 맥에서 테스트가 되었습니다. 윈도우즈에서는 작동되지 않을 수 있습니다.

	FILENAME = pandoc         // 파일명
	EXPORT_DIR = publish      // 문서가 생성될 폴더명
	CONTENTS = title.txt \    // title 파일과 md파일
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
		-o $(EXPORT_DIR)/$(FILENAME).pdf \
		$(CONTENTS)
	epub: makedir
		pandoc --toc -S --epub-chapter-level 2 \
		--epub-stylesheet style.css \
		--epub-cover-image figures/cover_600x800.jpg \
		--webtex -t epub3 \
		-o $(EXPORT_DIR)/$(FILENAME).epub \
		$(CONTENTS)
	docx: makedir
		pandoc --toc -S --webtex -t docx \
		-o $(EXPORT_DIR)/$(FILENAME).docx \
		$(CONTENTS)
	odt: makedir
		pandoc --toc -S -t odt \
		-o $(EXPORT_DIR)/$(FILENAME).odt \
		$(CONTENTS)
	html: makedir
		cp -rf figures $(EXPORT_DIR)
		cp -f style.css $(EXPORT_DIR)
		pandoc -s -S --toc -c style.css \
		-o $(EXPORT_DIR)/$(FILENAME).html \
		$(CONTENTS)
	all: pdf epub docx odt html
	clean:
		rm -rf $(EXPORT_DIR)

저는 위에 작성된 Makefile 형태를 가장 많이 사용합니다.
누군가가 "pdf로 문서를 부탁해~" 라고 하면 make pdf 라고 타이핑 하면됩니다.
상사가 "docx로 문서를 부탁해~" 라고 하면 make docx라고 타이핑 하면되죠.
이 유연한 방법은 분명 여러분 문서의 수명을 늘려줄겁니다.

하지만 여러 포멧의 변환을 잘 지원하기 위해서는
마크다운 문서, 스타일등을 를 잘 작성해야하는 노력이 필요합니다.

## Grip
Grip 명령어는 마크다운 문서를 웹서버로 바꾸어주는 유틸리티입니다.
프로젝트 홈페이지는 https://github.com/joeyespo/grip 입니다.
제가 출장지서 소수의 팀과 공유할 정보가 담긴 마크다운 문서가 있다고 가정하겠습니다.
이 마크다운 문서를 같은 네트워크망의 구성원에게 공유해보겠습니다.
참고로 이 솔루션은 보안이 되지 않습니다. 보안이 필요한 경우에는 주의해서 사용해주세요.

#### Grip 설치
macOS는 brew를 이용해서 grip을 쉽게 설치할 수 있습니다.

	$ brew install grip


#### 마크다운문서를 웹서버로 올리기
먼저 공유하고 싶은 내용을 README.md 파일로 제작합니다.
README.md 내용이 웹서버가 될 수 있도록 터미널에서 아래처럼 입력합니다.

	$ grip README.md

타이핑 하는 순간 해당 파일로 웹서버가 실행됩니다. 잘 실행된다면 아래처럼 출력됩니다.

	$ * Running on http://localhost:6419/ (Press CTRL+C to quit)

다른 팀원은 해당 컴퓨터의 IP의 6419 포트로 웹브라우저를 통해서 문서를 볼수 있습니다.
아이피를 알수 있는방법은 터미널에서 아래처럼 타이핑 합니다.

	$ ipconfig // Windows
	$ ifconfig // Linux, macOS

만약, 자신의 IP가 192.168.0.3 이라면,
다른 구성원은 웹브라우저에서 http://192.168.0.3:6419 주소로 접속해서 문서를 볼 수 있습니다.
