FROM busybox

LABEL maintainer "Frederico Freire Boaventura <frederico@boaventura.net>"
LABEL version "1.0"

ENV DOMAIN "localhost"
ENV BASEDIR "/app/www"
ENV PORT "80"
ENV ADDOPTS ""

ADD files/GeoLite2-City.mmdb files/GeoLite2-Country.mmdb files/ipd /app/

CMD /app/ipd --country-db=/app/GeoLite2-Country.mmdb --city-db=/app/GeoLite2-City.mmdb --listen=:${PORT} --template=/app/index.html ${ADDOPTS}
