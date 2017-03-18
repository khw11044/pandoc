# 문서 생성하기
마크다운을 이용해서 문서를 생성했다면 문서를 변환하는 과정이 남아있습니다.
이 장에서는 Pandoc을 이용해서 문서를 변환해보는 과정을 다루어보겠습니다.

## Epub 제작하기
Pandoc에 epub파일을 생성할 때 기본값은 epub2 형식을 사용합니다.
Pandoc에서 test.md 파일을 이용해서 epub 파일을 생성하는 예제입니다.

	$ pandoc test.md -o test.epub

epub3 형태의 아웃풋을 하기 위해서는 아래 옵션이 추가되어야 합니다.

	$ pandoc -o test.epub -t epub3 test.md


#### 이 책을 퍼블리시하는 실제 명령어의 예제
- 매번 반복해서 실행해야 하기때문에 스크립트로 저장해두면 좋습니다.
- sh파일 또는 GNU make를 이용해서 셋팅하는 경우가 있습니다.
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

#### 현재경로의 모든 md파일을 처리하기.
.md 들이 순서대로 정렬되어있고, 현재경로의 모든 md파일을 이용해서 
epub 파일을 생성하고 싶다면 아래 스크립트도 사용할 수 있습니다.
    
	$ pandoc `ls *.md | sort` -s -o test.epub

## PDF 제작하기
PDF는 많은 사람들이 사용하는 문서포멧입니다.
모든 OS에서 문서의 레이아웃이 깨지지 않고, 별도의 소프트웨어 없이 보기 편해서 많이 사용하는 포멧입니다.
PDF파일을 생성하는 예제는 아래와 같습니다.

	pandoc README.md -f markdown -t latex -s -o README.pdf --latex-engine=xelatex --variable mainfont='Nanum Myeongjo'

TODO:몇가지 옵션에 대해서 설명하기.

## Docx 제작하기
일반 사용자의 경우 마이크로소프트 오피스 포멧인 docx 파일이 익숙합니다.
우리나라는 출판사에서 교정확인을 위해 docx형태를 요청하는 경우도 많이 있습니다.
아래는 docx 파일을 생성하는 예제 입니다.

	$ pandoc 01_Preface.md -t docx -s -o test.docx

## MOBI 제작하기
컨버팅툴 : https://www.amazon.com/gp/feature.html/?docId=1000765261
