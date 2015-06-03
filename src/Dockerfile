FROM fvigotti/docker-fatjdk8

MAINTAINER fvigotti

RUN \
  cd / && \
  wget -q http://downloads.typesafe.com/play/2.4.0/play-2.4.0.zip && \
  unzip play-2.4.0.zip && \
  rm -f play-2.4.0.zip && \
  git clone https://github.com/kecaps/kafka-web-console.git && \
  cd /kafka-web-console && \
  /play-2.4.0/play clean compile stage



EXPOSE 9000

CMD exec /kafka-web-console/target/universal/stage/bin/kafka-web-console -Duser.dir=/data -DapplyEvolutions.default=true
