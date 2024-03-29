FROM frolvlad/alpine-glibc

LABEL maintainer="Peter Schuller <ps@pzzz.de>"

RUN wget https://downloads.arduino.cc/arduino-cli/arduino-cli-latest-linux64.tar.bz2 \
  && tar -C /bin -xvf arduino-cli-latest-linux64.tar.bz2 \
  && rm arduino-cli-latest-linux64.tar.bz2

RUN apk --update add --no-cache ca-certificates git

RUN arduino-cli core update-index
