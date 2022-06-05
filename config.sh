#!/usr/bin/env bash

mkdir -p /config{extensions,data,.ssh}

[[ ! -f /home/crownlabs/.bashrc ]] && \
cp /root/.bashrc /home/crownlabs/.bashrc
[[ ! -f /home/crownlabs/.profile ]] && \
cp /root/.profile /home/crownlabs/.profile

{
    # We want this to output without expansion
    # shellcheck disable=SC2016
    echo 'alias code=code-server'
    echo 'export PS1="\[\e]0;\u@\h: \w\a\]\[\033[0;00m\][\A]\[\033[00;00m\]\[\033[01;34m\]\u👑\[\033[00m\]:\[\033[01;34m\]\w\[\e[91m\]\[\033[00m\]$ "'
    echo 'export LS_COLOR="fi=0:st=0:pi=0;38;2;0;0;0;48;2;87;199;255:ln=0;38;2;255;106;193:*~=0;38;2;102;102;102:tw=0:di=0;38;2;87;199;255:ex=1;38;2;255;92;87:or=0;38;2;0;0;0;48;2;255;92;87:mi=0;38;2;0;0;0;48;2;255;92;87:so=0;38;2;0;0;0;48;2;255;106;193:no=0:cd=0;38;2;255;106;193;48;2;51;51;51:bd=0;38;2;154;237;254;48;2;51;51;51:ow=0:*.c=0;38;2;90;247;142:*.p=0;38;2;90;247;142:*.t=0;38;2;90;247;142:*.z=4;38;2;154;237;254:*.h=0;38;2;90;247;142:*.d=0;38;2;90;247;142:*.r=0;38;2;90;247;142:*.a=1;38;2;255;92;87:*.o=0;38;2;102;102;102:*.m=0;38;2;90;247;142:*.md=0;38;2;243;249;157:*.di=0;38;2;90;247;142:*.gz=4;38;2;154;237;254:*.pl=0;38;2;90;247;142:*.ps=0;38;2;255;92;87:*.gv=0;38;2;90;247;142:*.hi=0;38;2;102;102;102:*.cp=0;38;2;90;247;142:*.so=1;38;2;255;92;87:*.ts=0;38;2;90;247;142:*.lo=0;38;2;102;102;102:*.mn=0;38;2;90;247;142:*.bz=4;38;2;154;237;254:*.vb=0;38;2;90;247;142:*.ex=0;38;2;90;247;142:*.ko=1;38;2;255;92;87:*.cr=0;38;2;90;247;142:*.ml=0;38;2;90;247;142:*.pm=0;38;2;90;247;142:*.nb=0;38;2;90;247;142:*.as=0;38;2;90;247;142:*.hh=0;38;2;90;247;142:*.rs=0;38;2;90;247;142:*.rb=0;38;2;90;247;142:*.sh=0;38;2;90;247;142:*.cc=0;38;2;90;247;142:*.xz=4;38;2;154;237;254:*.bc=0;38;2;102;102;102:*.el=0;38;2;90;247;142:*.7z=4;38;2;154;237;254:*.hs=0;38;2;90;247;142:*.rm=0;38;2;255;180;223:*.js=0;38;2;90;247;142:*.jl=0;38;2;90;247;142:*.ll=0;38;2;90;247;142:*.la=0;38;2;102;102;102:*.kt=0;38;2;90;247;142:*.pp=0;38;2;90;247;142:*.td=0;38;2;90;247;142:*.fs=0;38;2;90;247;142:*css=0;38;2;90;247;142:*.py=0;38;2;90;247;142:*.cs=0;38;2;90;247;142:*.ui=0;38;2;243;249;157:*.go=0;38;2;90;247;142:*.exs=0;38;2;90;247;142:*.mir=0;38;2;90;247;142:*.rar=4;38;2;154;237;254:*.exe=1;38;2;255;92;87:*.rst=0;38;2;243;249;157:*.otf=0;38;2;255;180;223:*.tsx=0;38;2;90;247;142:*.ppm=0;38;2;255;180;223:*.aux=0;38;2;102;102;102:*.bsh=0;38;2;90;247;142:*.ind=0;38;2;102;102;102:*.pps=0;38;2;255;92;87:*.bag=4;38;2;154;237;254:*.mid=0;38;2;255;180;223:*.php=0;38;2;90;247;142:*.bcf=0;38;2;102;102;102:*.fnt=0;38;2;255;180;223:*.cfg=0;38;2;243;249;157:*.odp=0;38;2;255;92;87:*.xls=0;38;2;255;92;87:*.pas=0;38;2;90;247;142:*.mp4=0;38;2;255;180;223:*.bat=1;38;2;255;92;87:*.m4v=0;38;2;255;180;223:*.ilg=0;38;2;102;102;102:*.xml=0;38;2;243;249;157:*.bin=4;38;2;154;237;254:*.ipp=0;38;2;90;247;142:*.dox=0;38;2;165;255;195:*.clj=0;38;2;90;247;142:*.tmp=0;38;2;102;102;102:*.inc=0;38;2;90;247;142:*.asa=0;38;2;90;247;142:*.mov=0;38;2;255;180;223:*.yml=0;38;2;243;249;157:*.psd=0;38;2;255;180;223:*.fsi=0;38;2;90;247;142:*.c++=0;38;2;90;247;142:*.h++=0;38;2;90;247;142:*.pid=0;38;2;102;102;102:*.vim=0;38;2;90;247;142:*.gvy=0;38;2;90;247;142:*.tbz=4;38;2;154;237;254:*.erl=0;38;2;90;247;142:*.eps=0;38;2;255;180;223:*.dmg=4;38;2;154;237;254:*.zip=4;38;2;154;237;254:*.iso=4;38;2;154;237;254:*.htc=0;38;2;90;247;142:*.avi=0;38;2;255;180;223:*.vob=0;38;2;255;180;223:*.pod=0;38;2;90;247;142:*.xlr=0;38;2;255;92;87:*.sxw=0;38;2;255;92;87:*.hxx=0;38;2;90;247;142:*.dot=0;38;2;90;247;142:*.def=0;38;2;90;247;142:*.tml=0;38;2;243;249;157:*.ltx=0;38;2;90;247;142:*.tif=0;38;2;255;180;223:*.ps1=0;38;2;90;247;142:*.pdf=0;38;2;255;92;87:*.png=0;38;2;255;180;223:*.mp3=0;38;2;255;180;223:*.pgm=0;38;2;255;180;223:*.ttf=0;38;2;255;180;223:*.out=0;38;2;102;102;102:*.odt=0;38;2;255;92;87:*.csx=0;38;2;90;247;142:*.sxi=0;38;2;255;92;87:*.fon=0;38;2;255;180;223:*.awk=0;38;2;90;247;142:*.cgi=0;38;2;90;247;142:*.img=4;38;2;154;237;254:*.m4a=0;38;2;255;180;223:*.aif=0;38;2;255;180;223:*.rtf=0;38;2;255;92;87:*.wav=0;38;2;255;180;223:*.pkg=4;38;2;154;237;254:*.dll=1;38;2;255;92;87:*.pyc=0;38;2;102;102;102:*.flv=0;38;2;255;180;223:*.git=0;38;2;102;102;102:*.epp=0;38;2;90;247;142:*.tex=0;38;2;90;247;142:*.svg=0;38;2;255;180;223:*.jpg=0;38;2;255;180;223:*.cpp=0;38;2;90;247;142:*.ods=0;38;2;255;92;87:*.nix=0;38;2;243;249;157:*.pbm=0;38;2;255;180;223:*.bak=0;38;2;102;102;102:*.gif=0;38;2;255;180;223:*.log=0;38;2;102;102;102:*.tar=4;38;2;154;237;254:*.cxx=0;38;2;90;247;142:*.elm=0;38;2;90;247;142:*.bmp=0;38;2;255;180;223:*.sql=0;38;2;90;247;142:*.fls=0;38;2;102;102;102:*.hpp=0;38;2;90;247;142:*.zst=4;38;2;154;237;254:*.ics=0;38;2;255;92;87:*.xcf=0;38;2;255;180;223:*.lua=0;38;2;90;247;142:*.csv=0;38;2;243;249;157:*TODO=1:*.arj=4;38;2;154;237;254:*.blg=0;38;2;102;102;102:*.vcd=4;38;2;154;237;254:*.wmv=0;38;2;255;180;223:*hgrc=0;38;2;165;255;195:*.bbl=0;38;2;102;102;102:*.bz2=4;38;2;154;237;254:*.swf=0;38;2;255;180;223:*.bst=0;38;2;243;249;157:*.fsx=0;38;2;90;247;142:*.ppt=0;38;2;255;92;87:*.com=1;38;2;255;92;87:*.xmp=0;38;2;243;249;157:*.inl=0;38;2;90;247;142:*.swp=0;38;2;102;102;102:*.tgz=4;38;2;154;237;254:*.doc=0;38;2;255;92;87:*.ico=0;38;2;255;180;223:*.bib=0;38;2;243;249;157:*.toc=0;38;2;102;102;102:*.zsh=0;38;2;90;247;142:*.idx=0;38;2;102;102;102:*.sbt=0;38;2;90;247;142:*.wma=0;38;2;255;180;223:*.dpr=0;38;2;90;247;142:*.deb=4;38;2;154;237;254:*.rpm=4;38;2;154;237;254:*.kts=0;38;2;90;247;142:*.ini=0;38;2;243;249;157:*.htm=0;38;2;243;249;157:*.txt=0;38;2;243;249;157:*.kex=0;38;2;255;92;87:*.apk=4;38;2;154;237;254:*.mli=0;38;2;90;247;142:*.pro=0;38;2;165;255;195:*.jar=4;38;2;154;237;254:*.sty=0;38;2;102;102;102:*.tcl=0;38;2;90;247;142:*.mkv=0;38;2;255;180;223:*.mpg=0;38;2;255;180;223:*.ogg=0;38;2;255;180;223:*.json=0;38;2;243;249;157:*.java=0;38;2;90;247;142:*.hgrc=0;38;2;165;255;195:*.make=0;38;2;165;255;195:*.lock=0;38;2;102;102;102:*.xlsx=0;38;2;255;92;87:*.docx=0;38;2;255;92;87:*.purs=0;38;2;90;247;142:*.psd1=0;38;2;90;247;142:*.yaml=0;38;2;243;249;157:*.rlib=0;38;2;102;102;102:*.toml=0;38;2;243;249;157:*.dart=0;38;2;90;247;142:*.psm1=0;38;2;90;247;142:*.mpeg=0;38;2;255;180;223:*.diff=0;38;2;90;247;142:*.pptx=0;38;2;255;92;87:*.epub=0;38;2;255;92;87:*.tiff=0;38;2;255;180;223:*.less=0;38;2;90;247;142:*.bash=0;38;2;90;247;142:*.tbz2=4;38;2;154;237;254:*.lisp=0;38;2;90;247;142:*.jpeg=0;38;2;255;180;223:*.fish=0;38;2;90;247;142:*.orig=0;38;2;102;102;102:*.h264=0;38;2;255;180;223:*.html=0;38;2;243;249;157:*.conf=0;38;2;243;249;157:*.flac=0;38;2;255;180;223:*.cabal=0;38;2;90;247;142:*.dyn_o=0;38;2;102;102;102:*README=0;38;2;40;42;54;48;2;243;249;157:*.patch=0;38;2;90;247;142:*.class=0;38;2;102;102;102:*.mdown=0;38;2;243;249;157:*shadow=0;38;2;243;249;157:*passwd=0;38;2;243;249;157:*.scala=0;38;2;90;247;142:*.ipynb=0;38;2;90;247;142:*.cmake=0;38;2;165;255;195:*.xhtml=0;38;2;243;249;157:*.swift=0;38;2;90;247;142:*.cache=0;38;2;102;102;102:*.shtml=0;38;2;243;249;157:*.toast=4;38;2;154;237;254:*.ignore=0;38;2;165;255;195:*LICENSE=0;38;2;153;153;153:*.dyn_hi=0;38;2;102;102;102:*COPYING=0;38;2;153;153;153:*.groovy=0;38;2;90;247;142:*.gradle=0;38;2;90;247;142:*.matlab=0;38;2;90;247;142:*.flake8=0;38;2;165;255;195:*.config=0;38;2;243;249;157:*TODO.md=1:*INSTALL=0;38;2;40;42;54;48;2;243;249;157:*Makefile=0;38;2;165;255;195:*.desktop=0;38;2;243;249;157:*Doxyfile=0;38;2;165;255;195:*TODO.txt=1:*.gemspec=0;38;2;165;255;195:*setup.py=0;38;2;165;255;195:*.rgignore=0;38;2;165;255;195:*.fdignore=0;38;2;165;255;195:*COPYRIGHT=0;38;2;153;153;153:*.cmake.in=0;38;2;165;255;195:*.DS_Store=0;38;2;102;102;102:*README.md=0;38;2;40;42;54;48;2;243;249;157:*configure=0;38;2;165;255;195:*.markdown=0;38;2;243;249;157:*.kdevelop=0;38;2;165;255;195:*.scons_opt=0;38;2;102;102;102:*Dockerfile=0;38;2;243;249;157:*README.txt=0;38;2;40;42;54;48;2;243;249;157:*INSTALL.md=0;38;2;40;42;54;48;2;243;249;157:*CODEOWNERS=0;38;2;165;255;195:*SConscript=0;38;2;165;255;195:*.localized=0;38;2;102;102;102:*.gitignore=0;38;2;165;255;195:*SConstruct=0;38;2;165;255;195:*.gitconfig=0;38;2;165;255;195:*.synctex.gz=0;38;2;102;102;102:*Makefile.in=0;38;2;102;102;102:*.travis.yml=0;38;2;90;247;142:*MANIFEST.in=0;38;2;165;255;195:*Makefile.am=0;38;2;165;255;195:*.gitmodules=0;38;2;165;255;195:*INSTALL.txt=0;38;2;40;42;54;48;2;243;249;157:*LICENSE-MIT=0;38;2;153;153;153:*CONTRIBUTORS=0;38;2;40;42;54;48;2;243;249;157:*.applescript=0;38;2;90;247;142:*.fdb_latexmk=0;38;2;102;102;102:*appveyor.yml=0;38;2;90;247;142:*configure.ac=0;38;2;165;255;195:*.clang-format=0;38;2;165;255;195:*LICENSE-APACHE=0;38;2;153;153;153:*CMakeCache.txt=0;38;2;102;102;102:*.gitattributes=0;38;2;165;255;195:*CMakeLists.txt=0;38;2;165;255;195:*CONTRIBUTORS.md=0;38;2;40;42;54;48;2;243;249;157:*CONTRIBUTORS.txt=0;38;2;40;42;54;48;2;243;249;157:*requirements.txt=0;38;2;165;255;195:*.sconsign.dblite=0;38;2;102;102;102:*package-lock.json=0;38;2;102;102;102:*.CFUserTextEncoding=0;38;2;102;102;102:ow=1;34:tw=1;34:"'
} >> /home/crownlabs/.bashrc


