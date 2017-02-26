FROM ubuntu

RUN set -ex \
    && apt-get -qq --yes update \
    && apt-get install -qq --yes --no-install-recommends cowsay \
    && ln -s /usr/games/cowsay /usr/bin \
    && mkdir /example

COPY [ "service.sh", "/example/" ]

CMD [ "/example/service.sh" ]
