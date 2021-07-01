FROM pandoc/ubuntu-crossref:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y fonts-ipafont texlive-full 
RUN apt-get install -y pandoc-citeproc

ENTRYPOINT []
CMD []

ADD ./compile.sh /compile.sh

