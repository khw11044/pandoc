# Troff
- 브라이언 커닝헌이 책을 작성할 때 사용하는 유틸리티입니다.
- 이 툴을 만든 이유는 직관적으로 자신이 원하는 위치에 원하는 문자,모양을 넣기 위해서라고 합니다.
- 벨연구소에서 최초 만들어졌습니다.
- 비슷한 명령어로는 troff, nroff, groff가 있습니다.
- 사실 nroff는 troff -N와 같은 명령어 입니다.
- 홈페이지 : http://www.troff.org
- 메뉴얼 : http://cm.bell-labs.com/sys/doc/troff.pdf

### groff(GNU troff)사용하기
아래 내용을 Vim또는 다른 에디터로 타이핑 해봅시다.
inputfile 로 저장합니다.

```
Some text.
.ps 14
Some more text.
```

- 터미널에서 아래처럼 입력하면 output.ps 이름으로 PostScript문서가 생성됩니다.
- 한글은 깨집니다.
```
$ groff inputfile > output.ps
```

### PostScript란?
작성해보기
