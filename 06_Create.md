# 문서 생성하기
마크다운을 이용해서 문서를 생성했다면 이제 문서를 변환하는 과정이 남아있습니다.
문서를 변환해보는 과정을 다루어보겠습니다.

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
