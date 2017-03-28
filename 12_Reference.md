
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


inputfile을 이용해서 PostScript 파일을 생성해보겠습니다. 한글을 사용하면 텍스트가 깨집니다.
터미널을 띄우고 아래 명령을 타이핑하면 output.ps가 생성됩니다.

	$ groff inputfile > output.ps


## Make

TODO:동시에 여러파일을 퍼블리시 하는 코드를 작성한다.

#### Make 파일 작성법

	EXPORT_DIR = publish
	EPUB := $(patsubst %.md,%.epub,$(wildcard *.md))
	all: $(addprefix $(EXPORT_DIR)/, $(EPUB))
	$(EXPORT_DIR) :
		mkdir -p $@
	
	$(EXPORT_DIR)/%.epub : %.md $(EXPORT_DIR)
		pandoc $< -o $@ -s
	
	clean:
		rm -rf $(EXPORT_DIR)

#### Make 파일 활용법

	%.html: %.md style.css Makefile
		pandoc -c style.css -s -f markdown -t html --standalone -o $@ $<

	%.odt: %.md Makefile
		pandoc --standalone -f markdown -t odt -o $@ $<

	%.pdf: %.md %.odt
		markdown2pdf -f markdown -o $@ $<

	all: doc.html doc.odt doc.pdf

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
