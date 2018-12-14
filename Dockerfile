FROM alpine

RUN apk add --update \
      build-base \
      python \
      python-dev \
      py-pip \
      zlib-dev \
      jpeg-dev

RUN pip install --upgrade pip \
      && pip install vncdotool

ENTRYPOINT ["vncdotool"]
CMD ["-h"]
