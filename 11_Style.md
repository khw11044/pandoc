# 스타일 처리하기
`--epub-stylesheet` 옵션을 사용해서 스타일을 적용할 수 있습니다.
아래 파일은 E-book에 적용할 스타일 예입니다. CSS 형식을 사용합니다.
```
/* This defines styles and classes used in the book */
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
```

이미지 하단에 들어가는 주석에 대항하는 스타일은 figcaption 값을 CSS에서 설정하면 됩니다.


폰트추가
	--epub-embed-font


#### Page 나누기
옵션설명
	--epub-chapter-level 2

#### Table of Content

	--toc
	--toc-depth=2 //기본값은 3이다.

#### 메타데이터 추가
기본적으로 title.txt파일을 이용하지만,
자세하게 메타데이터를 추가할 수 있습니다.
메타데이터로는 날짜, 저자, 퍼블리셔, 라이센스, 언어등을 설정할 수 있습니다.
Dublin core tags를 사용합니다.
	--epub-metadata=metadata.xml

메타데이터의 내부예제

	<dc:title>My Ebook Title</dc:title> 
	<dc:language>en-US</dc:language> 
	<dc:creator opf:file-as="KimHanWoong" opf:role="aut">KimHanWoong</dc:creator> 
	<dc:publisher>Lazypic Publishing</dc:publisher>
	<dc:date opf:event="publication">2017-03-19</dc:date>
	<dc:rights>Copyright ©2017 by Kim Han Woong</dc:rights>
