# Pandoc(작업중)
- E-book을 쉽게 제작할 수 있는 [Pandoc](http://www.pandoc.org) 사용법을 다루는 책입니다.
- 책의 집필 작업이 일정부분 완료되면 https://github.com/khw7096/pandoc/releases 페이지에 epub, pdf 파일을 업로드 할 예정입니다.
- 이 코드저장소를 다운로드 하는것은 책의 예제 소스코드를 다운로드 받는것과 같습니다.


#### 이 저장소를 이용해서 E-book 파일을 생성하기
- 이 저장소의 코드를 가지고 E-book 파일을 만들기 위해서는 Pandoc 프로그램이 필요합니다.
- https://github.com/jgm/pandoc/releases 사이트에서 각 OS별 설치파일을 받을 수 있습니다.
- 리눅스나 MacOS를 사용한다면 yum 또는 brew 명령어를 이용해 손쉽게 설치할 수 있습니다.
```
# yum install pandoc    // linux
$ brew install pandoc   // macOS
```

- Pandoc 설치가 끝났다면 Git을 이용해서 이 코드저장소를 복사합니다.
```
$ git clone https://github.com/khw7096/pandoc.git // 저장소 복사
$ cd pandoc // pandoc 디렉토리로 이동
$ make all // make를 이용해서 동시에 epub,html,pdf,docx,odt 문서를 publish 디렉토리에 생성합니다.
```

#### 삽입된 이미지의 특성
- 책에 사용된 이미지는 figures 디렉토리에 있습니다.
- E-book 및 Github에서 책에 사용된 이미지가 잘 보이기 위해 이미지 경로뒤에 `?raw=true` 문자열이 추가되어 있습니다.
```
![image](figures/image.png?raw=true)
```
