
# 오픈소스
E-book 또는 문서를 만들때 알고 있는 기술로 제작해도 되지만 편리한 도구들이 뒷받침 해준다면 좀더 쾌적하게 E-book을 제작할 수 있습니다.
이 장은 E-book을 작성할 때 사용하면 편리한 오픈소스를 소개하는 장입니다.

### rg(ripgrep)
책 내용중 원하는 단어를 빠르게 검색하고 싶을 때 사용합니다.
linux나 macOS에 있는 grep 명령어도 같은 기능을 하지만 rg명령어의 처리속도가 더 빠릅니다.
저는 나중에 해야할 일들을 "TODO:할일" 형태로 기입하는 습관이 있습니다.
추후 TODO라는 문자열로 검색하면 남아있는 일들을 쉽게 알아볼 수 있기 때문입니다.
마크다운이 모여있는 디렉토리로 이동해서 rg명령을 이용해서 TODO가 들어간 라인을 검색합니다.

    $ rg TODO

"TODO" 라는 문자열이 들어가 있다면 해당파일과 줄수를 출력해줍니다.

    09_PandocArgv.md
    21:- native : TODO

    10_Math.md
    27:TODO:내용작성하기.

    12_Reference.md
    47:TODO:동시에 여러파일을 퍼블리시 하는 코드를 작성한다.

    OpenSource.md
    3:TODO

위 결과가 출력되면 오늘 하고싶은 Task를 진행하면 되겠죠.

아래 사이트에서 여러분이 사용하는 OS에 맞는 실행파일을 다운로드 후 사용할 수 있습니다.

- [https://github.com/BurntSushi/ripgrep/releases](https://github.com/BurntSushi/ripgrep/releases)

### guetzli
Jpg 이미지를 최종적으로 최적화 할 때 사용합니다.

### librsvg
Svg이미지를 Png로 변환해야할 때 사용합니다.

### macTex
macOS에서 LaTex를 작성할 때 사용합니다.
