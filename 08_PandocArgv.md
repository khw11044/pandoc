# Pandoc의 세부옵션
- `-f` : 소스포멧
- `-t` : 타겟포멧
- `-o` : output 파일. pdf는 latex 변환후 pdflatex를 통해서 pdf파일이 생성됩니다.
- `-s` : 하나의 파일로 모으는 옵션입니다.
- `--latex-engine` : 기본설정인 pdflatex 엔진은 유니코드(한글 처리)에 문제가 많습니다. xelatex라는 엔진을 더 많이 사용합니다.
- `--variable mainfont='Nanum Myeongjo'` : 폰트를 설정하는 방법입니다. 한글폰트를 적어주어야 한글이 깨지지 않습니다.
- `--toc` : Table of Contents의 약자 입니다. toc 옵션을 달면 목차가 들어갑니다.
