# Pandoc(작업중)
- E-book을 쉽게 제작할 수 있는 Pandoc 사용법을 다루는 책입니다.
- 책의 예제는 이 책의 소스코드 입니다. 이 리포지터리를 다운받는 것 자체가 소스코드를 내려받는 구조입니다.
- 작업이 어느정도 완료되면 https://github.com/khw7096/pandoc/releases 페이지에 컴파일된 책을 업로드 할 예정입니다.

#### 이 저장소를 이용해서 E-book 파일을 생성하기
- E-book 생성을 위해서 Pandoc 프로그램이 필요합니다.
- https://github.com/jgm/pandoc/releases 사이트에서 각 OS별 설치파일을 받을 수 있습니다.
- 리눅스나 MacOS를 사용하신다면 yum 또는 brew를 이용해서 쉽게 설치할 수 있습니다.
```
# yum install pandoc    // linux
$ brew install pandoc   // macOS
```

- Git을 이용해서 이 저장소를 복사합니다.
```
$ git clone https://github.com/khw7096/pandoc.git
$ cd pandoc
$ make all // epub,html,pdf,docx,odt 파일이 publish 경로에 생성됩니다.
```

#### 삽입된 이미지의 특성
- 책에 사용된 이미지는 figures 디렉토리에 있습니다.
- E-book 및 Github에서 이미지가 잘 보이기 위해서 이미지 경로뒤에 `?raw=true` 문자열이 추가되어 있습니다.
```
![image](figures/image.png?raw=true)
```
