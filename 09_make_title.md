# 타이틀 넣기
아래 파일을 title.md라는 파일로 생성합니다.
```
---
title: 책제목
author: 저자
rights: Creative Commons Non-Commercial Share Alike 3.0 //라이센스
language: en-US
...
```

epub 파일을 만들때 위 문서가 가장먼저 처리될 수 있도록 명령어를 구성합니다. 아래는 예입니다.
```
pandoc -S -o myebook.epub title.txt \
chapter1.md \
chapter2.md \
...
```

Progit에서 표지를 어떻게 처리했는지 예제를 관찰해보기
