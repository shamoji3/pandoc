# Pandoc+lulatex

Generating report.pdf from Markdown

## Install

```shell
$ docker build -t $USER/pandoc:latest . 
```

Official Pandoc Container (pandoc/latex:latest) still using texlive 2022.
And the tlmgr can't use current repository. (15 Apr, 2023)

```Dockerfile
RUN tlmgr option repository https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2022/tlnet-final/
```

## Usage

```shell
$ alias pandoc='docker run --rm -v "$(pwd):/data" -u $(id -u):$(id -g) $USER/pandoc'
$ vim report.pdf
 .. (edit)
$ pandoc report.md -d report.pdf -o report.pdf
```

## Thanks

* [cles::blog](https://blog.cles.jp/item/13153)
* [texlive2022 tlnet-final](https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2022/tlnet-final/)
