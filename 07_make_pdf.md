## PDF 제작하기
많은 사람들이 사용하는 문서포멧입니다.
epub이 나오기전에는 모든 OS에서 호환성 때문에 가장 많이 사용하기하는 포멧입니다.
마크다운 문서를 이용해서 PDF파일을 만드는 방법은 아래와 같습니다.
```
pandoc README.md -f markdown -t latex -s -o README.pdf --latex-engine=xelatex --variable mainfont='Nanum Myeongjo'
```
