
# Pandoc의 세부옵션
이 장에서는 쉘에서 아래 명령어를 타이핑했을 때 나오는 옵션을 알아보겠습니다.
모든 기능을 알아보기 보다는 중요하고 자주 사용하는 형태들을 다룰 예정입니다.

	$ pandoc --help

## 메뉴얼
아래 URL에 가면 Pandoc의 옵션에 대한 메뉴얼을 볼 수 있습니다.

	http://pandoc.org/MANUAL.html

## 세부옵션

#### -f
인풋형태의 포멧을 설정하는 옵션입니다.

	pandoc -f {format}

아래는 포멧에 들어갈 수 있는 문서 양식입니다. 마크업언어는 따로 설명을 달지 않았습니다.

- native : 하스켈 데이터입니다.
- json : JavaScript Object Notation 문서. 사람이 읽고쓰기 편리하며, 기계가 분석하고 생성하기에 용이한 포멧입니다.
- markdown
- markdown_strict
- markdown_phpextra
- markdown_github
- markdown_mmd
- commonmark
- textile
- rst
- html
- docbook : Docbook 기술위원회에서 관리하는 스키마입니다. 컴퓨터 하드웨어,소프트웨어에 관한 서적 및 논문에 적합한 포멧입니다. HaL Computr Systems와 O'Reilly & Associates에 의해서 설계되고 구현되었습니다.
- t2t : Txt2tags 명령어의 문서파일입니다. 리눅스 메뉴얼을 생성할 때 많이 사용합니다.
- docx : 마이크로소프트 워드 포멧입니다.
- odt : OpenOffice, LibreOffice 포멧입니다.
- epub : E-book 포멧입니다.
- opml : Outline Processor 마크업 언어이다. RSS 피드 공유시 많이 사용한다.
- org
- mediawiki
- twiki
- haddock
- latex : LaTex 양식입니다.
- +lhs

#### -t
타겟포멧

#### -o
output 파일.

#### -s
머릿말과 꼬릿말을 사용하여 문서를 제작합니다.
pdf, epub, epub3, fb2, docx, odt 문서에 대해서 자동으로 설정됩니다.

#### --latex-engine
기본설정은 pdflatex 엔진입니다. 이 엔진은 유니코드 처리시 문제가 많습니다.
최신 폰트를 지원하거나 한글을 사용할 때는 xelatex라는 엔진을 더 많이 사용합니다.

#### --variable mainfont='Nanum Myeongjo'
폰트를 설정하는 방법입니다. 기본 폰트를 사용해도 되지만 한글폰트를 적어주면 한글이 깨지지 않습니다.

#### --toc
Table of Contents의 약자 입니다. --toc 옵션을 추가하면 epub에 목차가 생성됩니다.
\newpage