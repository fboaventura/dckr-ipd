FROM joeshaw/busybox-nonroot

LABEL maintainer "Frederico Freire Boaventura <frederico@boaventura.net>"
LABEL version "1.0"

ENV DOMAIN "localhost"
ENV BASEDIR "/app/www"
ENV PORT "80"
ENV ADDOPTS ""
ENV LOGLEVEL "debug"

ADD files/GeoLite2-City.mmdb files/GeoLite2-Country.mmdb files/ipd /app/

USER nobody

CMD /app/ipd --log-level=${LOGLEVEL} --country-db=/app/GeoLite2-Country.mmdb --city-db=/app/GeoLite2-City.mmdb --listen=:${PORT} --template=/app/index.html --reverse-lookup ${ADDOPTS}
