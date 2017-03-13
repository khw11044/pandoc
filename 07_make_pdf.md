# PDF 제작하기
마크다운 문서를 이용해서 PDF파일을 만드는 방법은 아래와 같습니다.
```
pandoc README.md -f markdown -t latex -s -o README.pdf --latex-engine=xelatex --variable mainfont='Nanum Myeongjo'
```
