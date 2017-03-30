
# Pandoc이란?
Pandoc은 문서를 다른 형태의 문서로 변환하는 유틸리티입니다.
John Macfarlane 가 하스켈 언어를 이용해서 제작했습니다. GPL 라이센스를 따르고 있습니다.
Pandoc을 사용하는 프로젝트중 유명한 프로젝트로는 [Progit](https://git-scm.com/book/ko/v2) 프로젝트가 있습니다.
분산버전관리툴인 Git의 사용법을 다루는 책이며 Git을 배우는 초보자에게 인기있는 책입니다.

![Pandoc은 문서변환이 유연합니다.](figures/mdconverting.png?raw=true)

## Pandoc 설치하기
아래 사이트에서 여러분의 환경에 해당하는 OS의 배포판을 다운받으세요.
[https://github.com/jgm/pandoc/releases](https://github.com/jgm/pandoc/releases)

#### macOS에서 brew를 이용해서 설치하기
macOS에서는 brew를 이용해서 쉽게 설치할 수 있습니다.
brew가 없다면 [https://brew.sh/index_ko.html](https://brew.sh/index_ko.html) 사이트에서 brew를 먼저 설치하고 Pandoc을 설치 해주세요.

	$ brew install pandoc

#### 리눅스에서 yum을 이용해서 설치하기
여러분이 Redhat 또는 CentOS를 사용한다면 yum 을 이용해서 Pandoc을 설치할 수 있습니다.

	# yum install pandoc

#### 설치완료
Pandoc의 설치가 완료되면 터미널에서 아래처럼 타이핑합니다.

	$ pandoc --version

설치된 Pandoc의 버전정보가 잘 출력되는 지 확인합니다.

	pandoc 1.19.2.1
	Compiled with pandoc-types 1.17.0.5, texmath 0.9, skylighting 0.1.1.4
	Default user data directory: /Users/kimhanwoong/.pandoc
	Copyright (C) 2006-2016 John MacFarlane
	Web:  http://pandoc.org
	This is free software; see the source for copying conditions.
	There is no warranty, not even for merchantability or fitness
	for a particular purpose.
