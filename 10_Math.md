
# Math
이 장에 관심이 있다면 논문, 학술자료, 공학, 교사에 관련된 직업일 확률이 높습니다.
글 또는 그림과 다르게 수학 기호와 수식은 그래프의 표현은 책을 집필할 때 어려움이 됩니다. 이 상황에서 Latex를 사용하면 유용합니다.
이 책은 LaTex, WebTex, MathML을 소개합니다. LaTex를 심도있게 다루고 나머지 솔루션은 소개정도만 다룹니다.
그럼 문서를 생성할 때 어떻게 수학의 기호나 그래프를 그리는지 알아보겠습니다.

## LaTex
LaTex는 오픈소스 조판시스템(Typesetting System)입니다.
조판작업이란 최종 결과물이 출력이 되기전에 출력될 결과물에 맞게 도형,수식,글을 배치하는 작업입니다.
LaTex를 이용해서 모든 형태를 그리고 배치할 수 있지만 대부분 수식, 그래프 작업이 필요할 때 일반적으로 많이 사용합니다.
또한 물리학자들을 위한 학술 커뮤니케이션 언어로 많이 사용됩니다. 어렵고 이상해 보이지만 35년이상 사용되면서 필요한 표기를 잘 처리할 수 있었습니다.
수식을 표현하는 솔루션은 LaTex, WebTex, MathML .. 등등 굉장히 많습니다.
수식을 모든 문서에 표기하기 위해서는 비효율적이지만 LaTex문법을 이용해서 이미지로 렌더링 후 문서에 첨부하는 형태를 많이 사용합니다.
불편하지만 다른 문서포멧으로 컨버팅 되더라도 문제없이 표시되기 때문입니다.

## LaTex 설치
macOS는 용량이 크지만 macTex를 설치하시면 설치 솔루션을 한번에 해결할 수 있습니다.
MacTex 설치후 LaTexIt을 이용하면 미리결과를 보면서 LaTex문법을 타이핑할 수 있습니다.
또한 추후 재사용할 수 있도록 tex파일로 저장할 수 있습니다.

- 다운로드사이트 : http://www.tug.org/mactex/mactex-download.html

## LaTex문법
저는 수학에 사용하는 기호들도 하나의 언어라고 생각합니다.
한국어 또는 영어처럼 수학도 그 세계를 잘 표현하기 위해서 기호를 약속하고 사용합니다.
처음에 보면 분명 외계어처럼 보이지만, 다른 언어들 처럼 자신이 사용할 만큼만 배워서 사용하면 된다고 생각합니다.

이 챕터에서는 컴퓨터로 수학기호를 표현할 수 있는 LaTex의 수식표현 문법을 배워보겠습니다.
이 책은 Pandoc책이지만 Pandoc 만큼이나 LaTex를 조금 자세히 다루어 보는 책 입니다.
수학기호를 책에 넣기위해서 노력하다 보면 LaTex를 잘 다루고 있는 자료를 찾기위해서 매번 인터넷을 해메이기 때문입니다.

### 4칙연산

덧셈에 대한 표현입니다. 우리가 사용하는 표현과 크게 다르지 않습니다.

$1 + 1 = 2$

```
1 + 1 = 2
```

뺄셈의 표현

$2 - 1 = 1$

```
2 - 1 = 1
```

곱셈의 표현

$2 \times 2 = 4$

```
2 \times 2 = 4
```

나눗셈의 표현

$4 \div 2 = 2$

```
4 \div 2 = 2
```

### 괄호, 중괄호, 대괄호
LaTex에서 괄호를 사용하는 방법을 배워보겠습니다.

소괄호

$(1+2)$

```
(1+2)
```

중괄호

$\{1+2\}$

```
\{1+2\}
```

대괄호

$[1+2]$

```
[1+2]
```

### 분수
분수 영어로는 fraction. LaTex에서는 약자로 frac이라는 문법을 사용합니다.

$\frac{1}{2}$

```
\frac{1}{2}
```


### 지수, _

$2^2=4$

```
2^2
```

$2_2$

### 루트
루트. square root의 약자로 sqrt 라고 사용합니다.

$\sqrt{2}$

```
\sqrt{2}
```

### 정의

### 펙토리얼
$n!$

$n! = 1 \times 2 \times 3 \times \ldots n$

$n! = \prod_{k=1}^n k$

### 집합

### 부등식

### 삼각함수, 싸인, 코싸인, 탄젠트, 세타
$\cos (2\theta) = \cos^2 \theta - \sin^2 \theta$

### 파이
$\pi$

$\Pi$

$\phi$

### 닷
$\dots$

$\ldots$

$\cdots$

$\vdots$

$\ddots$

### 각도
90도

$90^\circ$

### 극한, lim
$\lim_{x \to \infty} \exp(-x) = 0$

### 시그마,for
$\sum_{i=1}^{10} t_i$

$\displaystyle\sum_{i=1}^{10} t_i$

### 로그
```
\log_b a
```
### 미분
```
$\dv{Q}{t} = \dv{s}{t}$
```

### 적분, integral
$\int_0^\infty \mathrm{e}^{-x}\,\mathrm{d}x$
$\int\limits_a^b$

### 행렬
$A_{m,n} = 
 \begin{pmatrix}
  a_{1,1} & a_{1,2} & \cdots & a_{1,n} \\
  a_{2,1} & a_{2,2} & \cdots & a_{2,n} \\
  \vdots  & \vdots  & \ddots & \vdots  \\
  a_{m,1} & a_{m,2} & \cdots & a_{m,n} 
 \end{pmatrix}$

### 벡터, 스칼라
$\overrightarrow{AB}$

$\overline{AB}$

### 선그리기

$\setlength{\unitlength}{3cm}
\begin{picture}(1,1)
\put(0,0){\line(1,0){1}}
\put(0,0){\line(0,1){1}}
\end{picture}$

### 좌표그리기

### 도형그리기

### 논문에 자주 나오는 기호


#### LaTex 참고자료
아래 링크를 참고하시면 더 많은 LaTex정보를 보실 수 있습니다.

- LaTex 문법을 쉽게 익힐 수 있는 곳은 아래 사이트입니다.
	https://en.wikibooks.org/wiki/LaTeX/Mathematics

- LaTex를 이용해서 많은것을 그릴 수 있습니다. 아래 URL에서 구경해보세요.
	https://en.wikibooks.org/wiki/LaTeX/Picture


## WebTex
LaTex는 종이 인쇄물 기반의 기술입니다. 현대 과학의 대부분의 정보는 Web으로 표기됩니다.
WebTex 프로젝트는 LaTex를 html문서로 문제없이 컴파일 하는 것을 목표로 두고 있습니다.
문법은 LaTex와 거의 같습니다.
만약 여러분이 마크다운에서 WebTex 문법을 사용했다면 epub 파일을 제작할 때 아래 옵션을 추가해주면 됩니다.

	--webtex

WebTex 문법은 "$수식$" 형태로 구성되어 있습니다.

```
f(x)=\sum_{n=0}^\infty\frac{f^{(n)}(a)}{n!}(x-a)^n
```

위 문장이 문제없이 잘 처리되었다면 epub문서에 아래와 같은 수식이 그려집니다.

$f(x)=\sum_{n=0}^\infty\frac{f^{(n)}(a)}{n!}(x-a)^n$


#### 참고자료
- 프로젝트 사이트 : [http://pkgw.github.io/webtex/](http://pkgw.github.io/webtex/)
- 프로젝트 코드 : [https://github.com/pkgw/webtex/](https://github.com/pkgw/webtex/)

## MathML
Mathematical Markup Language의 약자입니다.
epub3 에서 수학기호를 표현하는 방법중 하나입니다.
XML 용용기술이며, HTML5 기술의 하나입니다.
개인적으로 LaTex문법이 짧고 함축적이고 가독성이 더 좋다고 생각합니다.
MathML은 여러분이 사용하는 브라우저가 지원할 수도 있고 지원하지 않을수도 있습니다.
브라우저에 따라 결과가 다를 수 있습니다.
파이어폭스, 사파리에서는 정상적으로 값이 출력되지만, 크롬에서는 아직 지원이 되지 않습니다.


#### MathML의 작성

![mathml_example](figures/mathml_example.png?raw=true)

2차방정식에 대한 근의 공식에 해당하는 MathML의 문법입니다.

    <math>
    <mi>x</mi>
    <mo>=</mo>
    <mfrac>
      <mrow>
      <mrow>
        <mo>-</mo>
        <mi>b</mi>
      </mrow>
      <mo>&PlusMinus;</mo>
      <msqrt>
        <msup>
        <mi>b</mi>
        <mn>2</mn>
        </msup>
        <mo>-</mo>
        <mrow>
        <mn>4</mn>
        <mo>&InvisibleTimes;</mo>
        <mi>a</mi>
        <mo>&InvisibleTimes;</mo>
        <mi>c</mi>
        </mrow>
      </msqrt>
      </mrow>
      <mrow>
      <mn>2</mn>
      <mo>&InvisibleTimes;</mo>
      <mi>a</mi>
      </mrow>
    </mfrac>
    </math>

xml 문법을 사용하기 때문에 많은 태그가 작성되어야 합니다.
일반적으로 LaTex 문법이 더 간단하기 때문에 
LaTex로 수식을 작성하고 MathML로 바꾸어주는 작업이 더 쉽습니다.

LaTex to MathML 컨버팅을 지원하는 사이트입니다.
- https://www.mathtowebonline.com

