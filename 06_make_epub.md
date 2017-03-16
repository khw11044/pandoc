# epub 제작하기
Pandoc의 epub 생성 기본값은 epub2 형식 입니다.
epub3 형태의 아웃풋을 하기 위해서는 `pandoc -t epub3` 옵션을 사용합니다.
아래는 Pandoc으로 test.md파일을 이용해서 epub을 생성하는 간단한 명령어 예제입니다.
```
pandoc test.md -o test.epub
```

### 실제 프로젝트에 사용되는 명령어의 예시
```
pandoc -f markdown -t latex --epub-stylesheet style.css \
--latex-engine=xelatex --variable mainfont='Nanum Myeongjo' \
-S -o progit.epub title.txt \
01-introduction/01-chapter1.markdown \
02-git-basics/01-chapter2.markdown \
03-git-branching/01-chapter3.markdown \
04-git-server/01-chapter4.markdown \
05-distributed-git/01-chapter5.markdown \
06-git-tools/01-chapter6.markdown \
07-customizing-git/01-chapter7.markdown \
08-git-and-other-scms/01-chapter8.markdown \
09-git-internals/01-chapter9.markdown
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
```

#### 현재경로의 모든 md파일을 처리하기.
    
	pandoc `ls *.md | sort` -s -o test.epub
