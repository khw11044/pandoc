# 이미지를 처리하는 팁
마크다운 문법을 이용해서 문서에 이미지를 넣는 문법은 아래와 같습니다.
```
![Figure 1-1. 이미지설명](../figures/image.png)
```

이미지를 넣을 때마다 위 문장을 타이핑하는 것은 불편합니다.
마크다운을 작성할 때 아래 형태로 간편하게 작성하고 Perl 스크립트를 이용해서 마크다운 문법으로 변경할 수 있습니다.
```
Insert 18333fig0101.png
Figure 1-1. Local version control diagram.
```

Perl 스크립트는 아래와 같습니다.
```
perl -i -0pe \
's/^Insert\s*(.*).png\s*\n([^\n]*)$/!\[\2](..\/figures\/\1-tn.png)/mg' \
*/*.markdown
```

위 Perl 스크립트가 실행되면 하위경로의 모든 markdown 문서에 들어있는 사용자 이미지 문자열이 아래형태로 변경됩니다.
```
![Figure 1-1. Local version control diagram.](../figures/18333fig0101-tn.png)
```
