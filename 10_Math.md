# Math
이 장에 관심이 있다면 논문, 학술자료, 공학, 교사에 관련된 직업일 확률이 높습니다.
문서를 생성할 때 어떻게 수학의 기호나 그래프를 그리는지 알아보겠습니다.

## Latex
글 또는 그림과 다르게 수학 기호와 수식은 책을 집필할 때 어려움이 됩니다.
이 상황에서 Latex를 사용하면 유용합니다.

#### Latex란?
TODO:Latex 설명하기

#### 참고자료
- LaTex 문법을 쉽게 익힐 수 있는 곳은 아래 사이트입니다.
	https://en.wikibooks.org/wiki/LaTeX/Mathematics

- LaTex로 모든것을 그릴 수 있습니다. 아래 URL에서 구경해보세요.
	https://en.wikibooks.org/wiki/LaTeX/Picture

#### macOS에서 LaTex 설치
- 용량이 크고 설치가 오래걸리지만 한번에 해결할 수 있습니다.
- macOS에서는 macTex를 통해서 쉽게 설치할 수 있습니다.
- http://www.tug.org/mactex/mactex-download.html
- MacTex 설치후 LaTexIt을 이용하면 미리결과를 보면서 LaTex문법을 타이핑할 수 있습니다.
- 또한 tex파일로 저장할 수 있습니다.
- 그러나 tex파일을 더 관리해야하는 이슈가 발생합니다.
- Pandoc을 사용할 때는 개인적으로 WebTex를 사용하는 것을 추천합니다.
- Github는 WebTex문법을 지원하지 않습니다.

## WebTex
- TODO:WebTex 설명하기.
- 옵션

	--webtex

테스트
	$f(x)=\sum_{n=0}^\infty\frac{f^{(n)}(a)}{n!}(x-a)^n$

## MathML
Mathematical Markup Language의 약자입니다.
epub3 에서 수학기호를 표현하는 방법중 하나입니다.
XML 용용기술이며, HTML5 기술의 하나입니다.
막상 수식을 작성해보면 LaTex가 더 편리하다고 개인적으로 생각합니다.
약간의 인내심을 가지고 MathML을 사용해보는 것도 추천합니다.

#### test
<mrow>
  <mi>x</mi>
  <mo>=</mo>
  <mfrac>
    <mrow>
      <mrow>
        <mo>-</mo>
        <mi>b</mi>
      </mrow>
      <mo>&#xB1;<!--PLUS-MINUS SIGN--></mo>
      <msqrt>
        <mrow>
          <msup>
            <mi>b</mi>
            <mn>2</mn>
          </msup>
          <mo>-</mo>
          <mrow>
            <mn>4</mn>
            <mo>&#x2062;<!--INVISIBLE TIMES--></mo>
            <mi>a</mi>
            <mo>&#x2062;<!--INVISIBLE TIMES--></mo>
            <mi>c</mi>
          </mrow>
        </mrow>
      </msqrt>
    </mrow>
    <mrow>
      <mn>2</mn>
      <mo>&#x2062;<!--INVISIBLE TIMES--></mo>
      <mi>a</mi>
    </mrow>
  </mfrac>
</mrow>
