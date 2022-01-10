FROM iqss/solr-k8s:4.20

COPY . /app
USER root
RUN /app/secure-log4j.sh
USER ${SOLR_USER}