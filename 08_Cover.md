
# Title & Cover
이 장에서는 Title을 추가하고 책 표지를 입히는 과정을 다루게 됩니다.

#### Title 만들기
E-book에 Title을 넣어봅시다.
아래 내용을 title.txt 라는 파일로 생성합니다.

	---
	title: 책제목
	author: 저자
	rights: Creative Commons Non-Commercial Share Alike 3.0
	language: ko-KR
	...

epub 파일 생성할 때 위에서 만든 title.txt 파일이 먼저 처리될 수 있도록
명령어를 구성하면 됩니다. 아래는 명령어의 예입니다.

	$ pandoc -S -o document.epub title.txt \
	chapter1.md \
	chapter2.md

#### language 작성법
EPUB을 제작할 때 title.txt 내용에서
language부분을 작성하는 방법을 알려드리겠습니다.
이 책은 대부분 한국어로 작성되었습니다.
산업표준 ISO 639 와 ISO 3166-1 코드를 검색합니다.
ISO 639는 인쇄된 언어를 뜻하며 두자리 소문자 코드입니다.
ISO 639 정보는 아래 사이트에서 찾아볼 수 있습니다.

	https://www.w3.org/WAI/ER/IG/ert/iso639.htm

위 사이트에서 찾아보면 한국어는 "kr"로 정보가 나옵니다.

다음은 국가정보를 뜻하는 ISO 3166-1 검색하겠습니다.
ISO 3166-1 의 자세한 정보는 아래 사이트에서 찾아볼 수 있습니다.

	https://ko.wikipedia.org/wiki/ISO_3166-1

대한민국은 ISO 3166-1 코드로 "KR"입니다.
여러분이 보고있는 이 Pandoc책의 language 값은 "ko-KR"이 됩니다.

#### 표지넣기
여러분이 표지에 이미지를 넣고 싶을때는 다음 옵션을 이용합니다.

	--epub-cover-image

일반적으로 600x800 이미지를 많이 사용합니다.
이미지 사이즈가 크면 메모리를 많이 사용하기 때문입니다.
커버사이즈는 보통 1:1.333.. 비율이며, 900x1200, 1200x1600 사이즈까지도 사용됩니다.

커버는 1차로 고해상도로 제작후 사이즈별로 파일을 만들어서 사용하면 편리합니다.
아래는 표지를 넣는 예제 입니다.

	$ pandoc -S -o document.epub \
	--epub-cover-image cover_600x800.jpg \
	title.txt \
	chapter1.md \
	chapter2.md

