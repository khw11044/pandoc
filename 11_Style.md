# 스타일
epub 파일이 보기좋게 보이기 위해서는 스타일을 적용하면 좋습니다.

#### 스타일 적용하기
Pandoc에서는 --epub-stylesheet 옵션을 사용해서 스타일을 적용할 수 있습니다.
스타일에 사용되는 포멧은 웹개발시 사용되는 CSS 포멧입니다.
style.css 파일을 적용해서 epub을 만드는 예제입니다.

	$ pandoc -o document.epub --epub-stylesheet style.css document.md


style.css파일의 구조는 아래와 같습니다.

	body{margin:5%;text-align:justify;font-size:medium;}
	code{font-family:monospace;}
	h1{text-align:left;}
	h2{text-align:left;}
	h3{text-align:left;}
	h4{text-align:left;}
	h5{text-align:left;}
	h6{text-align:left;}
	h1.title{}
	h2.author{}
	h3.date{}
	ol.toc{padding:0;margin-left:1em;}
	ol.tocli{list-style-type:none;margin:0;padding:0;}

#### 이미지와 관련된 스타일
이미지 하단 주석 스타일을 설정할 때는 CSS에서 figcaption 값을 추가해주세요.

	figcaption {
		margin-left: auto;
		margin-right: auto;
		text-align: center;
		font-style: itaclic;
		font-size: 0.7em;
	}

#### 폰트
epub파일 내부에 폰트를 같이 저장할 수 있습니다.
폰트를 저장할 때 사용하는 옵션은 --epub-embed-font 입니다.


#### Page 나누기
\#표시가 2이하라면 해당 페이지를 각각 다른 페이지로 표현하도록 하는 설정입니다.
	
	--epub-chapter-level 2

#### 목차만들기

	--toc
	--toc-depth=2 // 기본값은 3이다.

#### 메타데이터 추가
기본적으로 타이틀을 만들때는 title.txt 파일을 이용하지만,
xml파일을 생성하고 메타데이터를 추가할 수 있습니다.
메타데이터의 예로는 날짜, 저자, 퍼블리셔, 라이센스, 언어등을 설정할 수 있습니다.
Dublin core tags를 사용합니다.
	--epub-metadata=metadata.xml

메타데이터의 내부예제

	<dc:title>My Ebook Title</dc:title> 
	<dc:language>en-US</dc:language> 
	<dc:creator opf:file-as="KimHanWoong" opf:role="aut">KimHanWoong</dc:creator> 
	<dc:publisher>Lazypic Publishing</dc:publisher>
	<dc:date opf:event="publication">2017-03-19</dc:date>
	<dc:rights>Copyright ©2017 by Kim Han Woong</dc:rights>
