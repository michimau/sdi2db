FROM osgeo/gdal:alpine-small-3.4.2

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

RUN apk add curl postgresql-client
ADD  https://gist.githubusercontent.com/michimau/cc72010eaf7c15d2e8b57a7de694861e/raw/d4b22ee43279fadfeb2ae71dad0aba621b66ad44/gistfile1.txt /opt/importgeospatial.sh

RUN chmod a+x /opt/importgeospatial.sh
