# Pandoc(작업중)
- E-book을 쉽게 제작할 수 있는 Pandoc 사용법을 다루는 책입니다.
- 책의 예제로 이 책의 소스가 사용되었습니다. 이 리포지터리를 다운받는 것 자체가 소스코드를 내려받는 구조입니다.

#### E-book 퍼블리쉬 방법
- pandoc을 설치합니다.
- 이 리포지터리를 clone합니다.
```
git clone https://github.com/khw7096/pandoc.git
cd pandoc
make all // epub,html,pdf,docx,odt 파일이 publish 경로에 생성됩니다.
```

#### 삽입된 이미지의 특성
- figures 폴더에는 책에 삽입되는 이미지가 있습니다.
- E-book 및 Github에서 이미지 미리보기를 위해 이미지 경로뒤 `?raw=true` 문자열이 추가되어 있습니다.
```
![image](figures/image.png?raw=true)
```
