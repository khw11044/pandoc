# Cover
이 장에서는 Title을 추가하고 표지를 입히는 과정을 다루게 됩니다.

#### Title 만들기
E-book에 Title을 생성하는 방법을 다룹니다.
아래 내용을 title.txt 라는 파일로 생성합니다.

	---
	title: 책제목
	author: 저자
	rights: Creative Commons Non-Commercial Share Alike 3.0
	language: ko-KR
	...

epub 파일 제작할 때 방금 만든 title.txt가 먼저 처리될 수 있도록 명령어를 구성합니다.
아래는 명령어의 예입니다.

	$ pandoc -S -o document.epub title.txt \
	chapter1.md \
	chapter2.md

#### language 표기법
EPUB을 제작할 때 title.txt의 language부분에
ISO 639 와 ISO 3166-1 코드에 따라 책에서 많이 사용되는 언어를 표기해야 합니다.
ISO 639는 인쇄된 언어를 뜻하며 두자리 소문자 코드입니다.
ISO 639 정보는 아래 사이트에서 찾아볼 수 있습니다.

	https://www.w3.org/WAI/ER/IG/ert/iso639.htm

ISO 3166-1 국가정보를 뜻합니다.
ISO 3166-1 정보는 아래 사이트에서 찾아볼 수 있습니다.

	https://ko.wikipedia.org/wiki/ISO_3166-1

한국어는 ISO 639에서는 ko이며
대한민국은 ISO 3166-1 규칙에서 KR 값입니다.
그래서 이 책의 language 값은 "ko-KR" 입니다.

#### 표지넣기
여러분이 표지에 이미지를 넣고 싶을때는 다음 옵션을 이용합니다.

	--epub-cover-image

일반적으로 600x800 이미지를 많이 사용합니다.
이미지 사이즈가 크면 메모리를 많이 사용하기 때문입니다.
커버사이즈는 보통 1:2.08 비율이며, 783x1200, 1200x2500 사이즈까지도 사용됩니다.

커버는 1차로 고해상도로 제작후 사이즈별로 파일을 만들어서 사용하면 편리합니다.
아래는 표지를 넣는 예제 입니다.

	$ pandoc -S -o document.epub \
	--epub-cover-image cover_600x800.jpg \
	title.txt \
	chapter1.md \
	chapter2.md
