# 표지만들기
E-book에 표지가 있다면 없는것보다는 좋을것입니다.
아래 내용을 title.txt 라는 파일로 생성해봅시다.

	---
	title: 책제목
	author: 저자
	rights: Creative Commons Non-Commercial Share Alike 3.0
	language: en-US
	...

epub 파일 제작할 때 방금 만든 title.txt가 먼저 처리될 수 있도록 명령어를 구성합니다.
아래는 명령어의 예입니다.

	pandoc -S -o myebook.epub title.txt \
	chapter1.md \
	chapter2.md

표지에 이미지를 넣을 때는 다음 옵션을 이용합니다.

	--epub-cover-image
