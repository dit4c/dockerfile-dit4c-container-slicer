FROM dit4c/dit4c-container-x11
MAINTAINER Tim Dettrick <t.dettrick@uq.edu.au>

RUN curl -s -L http://download.slicer.org/bitstream/263262 > \
    /tmp/Slicer-4.4.0-linux-amd64.tar.gz && \
  tar xzvf /tmp/Slicer-4.4.0-linux-amd64.tar.gz -C /tmp && \
  mv /tmp/Slicer-4.4.0-linux-amd64 /opt/slicer && \
  rm /tmp/Slicer-4.4.0-linux-amd64.tar.gz

# See http://na-mic.org/Mantis/view.php?id=4015
RUN mkdir /home/researcher/Documents

RUN fsudo yum install -y mesa-libGLU

COPY /etc /etc

# Because COPY doesn't respect USER...
USER root
RUN chown -R researcher:researcher /etc
USER researcher
