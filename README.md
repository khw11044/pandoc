# Pandoc(작업중)
- E-book 제작을 위한 Pandoc 사용법을 다루는 책입니다.
- 최종적으로는 책의 예제가 이 코드저장소 자체가 될 수 있도록 구성할 예정입니다.


#### E-book 퍼블리쉬 방법
- pandoc을 설치합니다.
- 이 리포지터리를 clone합니다.
```
git clone https://github.com/khw7096/pandoc.git
cd pandoc
sh publish.sh // epub 파일이 생성됩니다.
```

#### 책에 삽입된 이미지
- figures 폴더에는 책에 들어가는 삽화 이미지가 존재합니다.
- .md 파일 내부에는 이미지가 상대경로 작성되어있습니다.
- Github에서 이미지 미리보기를 위해서 이미지 마크다운은 아래처럼 작성되어있습니다.

	./figures/image.png?raw=true
