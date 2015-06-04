FROM dit4c/dit4c-container-x11:latest
MAINTAINER Tim Dettrick <t.dettrick@uq.edu.au>

RUN curl -L http://download.slicer.org/bitstream/263262 > Slicer-4.4.0-linux-amd64.tar.gz && \
  tar xzvf Slicer-4.4.0-linux-amd64.tar.gz && \
  mv Slicer-4.4.0-linux-amd64 /opt/slicer
