FROM "pandoc/latex"
RUN apk --update add make
#### tlmgr: Local TeX Live (2022) is older than remote repository (2023). at 20230415
#RUN tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
#### USE archived repository 
RUN tlmgr option repository https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2022/tlnet-final/
RUN tlmgr update --self --all
RUN tlmgr install \
    collection-langjapanese \
    bxjscls \
    luatexja \
    ctex \
    type1cm
