FROM osgeo/gdal:ubuntu-full-3.4.2

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

#RUN apk add curl \
#            postgresql-client \
#            bash \
#            postgis \
##            geos

RUN apt-get -y update && \
    apt-get -y install curl \
            postgresql-client \
            postgis
# \
#            geos
ADD https://gist.githubusercontent.com/michimau/c7cbf104651d1d1ddbff48c77435dd2b/raw/d811bcf235ebb6ae8869d46f6c1d67c584412139/gistfile1.txt /opt/importgeospatial.sh
#ADD https://gist.githubusercontent.com/michimau/c7cbf104651d1d1ddbff48c77435dd2b/raw/cfc66873036e6f150a2afb3189b1b06eafd6352c/gistfile1.txt /opt/importgeospatial.sh
#https://gist.githubusercontent.com/michimau/c7cbf104651d1d1ddbff48c77435dd2b/raw/6a6c28658cb17fe0eee9683b28710e4c26063395/gistfile1.txt /opt/importgeospatial.sh

RUN chmod a+x /opt/importgeospatial.sh
