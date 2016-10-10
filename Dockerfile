FROM debian:jessie

RUN apt-get update
RUN apt-get install -y \
    texlive-fonts-recommended \
    texlive-luatex \
    make

# For a leaner install, I am avoiding recommendations (and suggestions)
# For example, we're avoiding pulling in hella fonts
# this may be redundant
RUN apt-get install -y --no-install-recommends \
    texlive-latex-extra \
    texlive-latex-recommended \
    latexmk

RUN mkdir /userfiles

WORKDIR /userfiles

ENTRYPOINT [ "make", "current-resume.pdf" ]
