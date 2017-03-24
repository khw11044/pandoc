# 스타일
문서가 보기좋게 하기위해서 스타일을 적용할 수 있습니다.

#### 스타일 적용하기
Pandoc에서는 --epub-stylesheet 옵션을 사용해서 스타일을 적용할 수 있습니다.
스타일에 사용되는 포멧은 일반적으로 웹개발시 사용되는 CSS 포멧과 같습니다.
style.css 파일을 적용해서 epub을 만드는 예제입니다.

	$ pandoc -o document.epub --epub-stylesheet style.css document.md


style.css파일의 내용은 보통 아래형태를 보입니다.

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
이미지 하단 주석에 해당하는 글씨에 스타일을 설정할 때는 CSS에서 figcaption 값을 추가해주세요.

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


#### 각 챕터별 Page 분리방법
여러분이 생성한 제목의 # 갯수에 따라서 페이지를 분리할 수 있습니다.
\#표시가 2개 이하라면 각각의 페이지로 내용을 분리하는 설정입니다.
	
	--epub-chapter-level 2

#### 목차만들기
epub에서 목차를 만들때는 --toc 옵션을 추가합니다.

	--toc // 기본값입니다. --toc-depth=3 과 같습니다.

#### 목차의 단계설정
--toc 옵션이 들어가면 기본적으로 --toc-depth=3 옵션이 적용됩니다.
목차의 단계를 조절하고 싶다면 아래 옵션을 적용합니다.

	--toc-depth=2 // 목차 단계를 2로 설정합니다.

TODO:3,2에 대한 예제 넣기.


## 메타데이터 추가
기본적으로 E-book은 title.txt 파일을 이용하여 기본 정보가 들어갑니다.
하지만 좀더 많은 정보를 E-book에 담고 싶다면 메타데이터를 추가할 수 있습니다.
xml파일을 생성하고 메타데이터를 추가할 수 있습니다.
메타데이터로 날짜, 저자, 퍼블리셔, 라이센스, 언어등을 설정할 수 있습니다.
파일의 정보는 더블린코어(Dublin Core) 형태를 사용합니다.


#### 더블린 코어란
인터넷의 다양한 컨텐츠를 효율적으로 검색하기 위해서 사용되는 메타데이터 입니다.
미국 오하이오 주 더블린에서 개최된 메타 데이터 워크숍에서 최초 제안되었습니다.
ISO 15836으로 표준화된 메타데이터 요소의 집합입니다.
사용하는 포멧은 XML 또는 RDF를 사용합니다. 

더블린 코어의 메타데이터 15가지 요소
- Title / 제목
- Creator / 제작자
- Type / 유형 : 컨텐츠의 성격, 장르
- Contributor / 기타제작자 : 제작에 참여한 사람들
- Publisher / 발행처 : 책임을 가지는 개체
- Date / 날짜 : 컨텐츠 이용날짜
- Language / 언어 : 컨텐츠 사용언어
- Format / 형식 : 구현 형식
- Description / 설명 : 내용물에 대한 간단한 설명
- Subject / 주제 : 컨텐츠의 주제
- Relation / 관련된 자원에 대한 참조 : 공식적인 식별시스템에 사용하는 문자열이나 번호를 작성한다.
- Identifier / 식별자 : 보통 URI(웹주소), DOI(디지털 객체 식별기호), ISBN(국제표준도서번호)이 사용된다.
- Rights / 권한 : 라이센스
- Source / 출처 : 작성한 자료의 원자료 또는 유래를 작성한다.
- Coverage / 범위 : 지명, 지리좌표, 시대, 날짜의 범위, 관할구명등을 포함한다. 좌표, 날짜보다 지명이나 시대를 우선하여 사용한다.

#### 메타데이터 형식
dc: 문자열은 더블린코어의 약자입니다.
아래는 metadata.xml 내부형식의 예입니다.

	<dc:title>My Ebook Title</dc:title> 
	<dc:language>en-US</dc:language> 
	<dc:creator opf:file-as="KimHanWoong" opf:role="aut">KimHanWoong</dc:creator> 
	<dc:publisher>Lazypic Publishing</dc:publisher>
	<dc:date opf:event="publication">2017-03-19</dc:date>
	.
	.
	.
	<dc:rights>Copyright ©2017 by Kim Han Woong</dc:rights>

#### 메타데이터 추가
Pandoc으로 epub을 제작시 아래 명령을 이용해서 위해서 만든 xml파일을 추가할 수 있습니다.
아래는 해당 명령어의 예입니다.

	--epub-metadata=metadata.xml
