# References

## 참고프로젝트 : Progit
Progit 이라는 책도 pandoc을 이용해서 제작되었습니다.
실제로 Progit프로젝트를 git 으로 다운받아서 구성을 살펴보면 많은 도움이 됩니다.
책을 작성하면서 사용했던 테크닉들을 볼 수 있는 사이트는 아래와 같다.
[http://pandoc.org/epub.html](http://pandoc.org/epub.html)

## Troff
- 브라이언 커닝헌이 책을 작성할 때 사용하는 유틸리티입니다.
- 이 툴을 만든 이유는 직관적으로 자신이 원하는 위치에 원하는 문자,모양을 넣기 위해서라고 합니다.
- 벨연구소에서 최초 만들어졌습니다.
- 비슷한 명령어로는 troff, nroff, groff가 있습니다.
- 사실 nroff는 troff -N와 같은 명령어 입니다.
- 홈페이지 : http://www.troff.org
- 메뉴얼 : http://cm.bell-labs.com/sys/doc/troff.pdf

#### groff(GNU troff)사용하기
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

#### PostScript란?
작성해보기

## Make

> 동시에 여러파일을 퍼블리시 하는 코드를 작성한다.

#### GNU make파일 작성법

	EXPORT_DIR = publish
	EPUB := $(patsubst %.md,%.epub,$(wildcard *.md))
	all: $(addprefix $(EXPORT_DIR)/, $(EPUB))
	$(EXPORT_DIR) :
		mkdir -p $@
	
	$(EXPORT_DIR)/%.epub : %.md $(EXPORT_DIR)
		pandoc $< -o $@ -s
	
	clean:
		rm -rf $(EXPORT_DIR)
## Grip
- .md 파일을 웹서버를 간단하게 만들고 브라우저를 통해서 볼 수 있다.
- 프로젝트 : https://github.com/joeyespo/grip

> 경험담 소개하기. 외부에서 md를 제작하고 관련스텝과 하나의 네트워크에서 정보를 임시로 공유해야할 때..

#### Grip 설치

	brew install grip

