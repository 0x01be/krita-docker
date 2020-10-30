FROM 0x01be/xpra

RUN apk add --no-cache --virtual krita-dependencies \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
    krita \
    mesa-dri-swrast

USER xpra
ENV COMMAND krita

