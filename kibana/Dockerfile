### This is a generated file from Dockerfile.in ###

#@follow_tag(registry-proxy.engineering.redhat.com/rh-osbs/ubi8-nodejs-10:latest)
FROM registry.ci.openshift.org/ocp/builder:rhel8.2.els.nodejs.10
ENV BUILD_VERSION=6.8.1
ENV SOURCE_GIT_COMMIT=${CI_ORIGIN_AGGREGATED_LOGGING_UPSTREAM_COMMIT:-}
ENV SOURCE_GIT_URL=${CI_ORIGIN_AGGREGATED_LOGGING_UPSTREAM_URL:-}

MAINTAINER OpenShift Development <dev@lists.openshift.redhat.com>

EXPOSE 5601

ENV ELASTICSEARCH_URL=https://elasticsearch.openshift-logging.svc.cluster.local:9200 \
    HOME=/opt/app-root/src  \
    KIBANA_CONF_DIR=${HOME}/config \
    KIBANA_VERSION=6.8.1 \
    NODE_ENV=production \
    RELEASE_STREAM=prod \
    container=oci \
    NODE_ENV=production \
    NODE_PATH=/usr/bin

ARG LOCAL_REPO

USER 0

ENV upstream_code=${upstream_code:-"."}
COPY  ${upstream_code}/vendored_tar_src/kibana-oss-6.8.1 ${HOME}/
COPY  ${upstream_code}/vendored_tar_src/opendistro_security_kibana_plugin-0.10.0.4/ ${HOME}/plugins/opendistro_security_kibana_plugin-0.10.0.4/
COPY  ${upstream_code}/vendored_tar_src/handlebars/ ${HOME}/node_modules/handlebars/
COPY  ${upstream_code}/vendored_tar_src/minimist/ ${HOME}/node_modules/minimist/
COPY  ${upstream_code}/vendored_tar_src/ua-parser-js-1.0.2/ ${HOME}/node_modules/ua-parser-js/
COPY  ${upstream_code}/vendored_tar_src/fbjs-0.8.18/ ${HOME}/node_modules/fbjs/

RUN chmod -R og+w ${HOME}/
COPY  ${upstream_code}/probe/ /usr/share/kibana/probe/
COPY  ${upstream_code}/kibana.yml ${KIBANA_CONF_DIR}/
COPY  ${upstream_code}/run.sh ${HOME}/
COPY  ${upstream_code}/utils ${HOME}/
COPY  ${upstream_code}/module_list.sh ${HOME}/
RUN sed -i -e 's/"node":.*/"node": "'$(${NODE_PATH}/node --version | sed 's/v//')'"/' package.json && \
    mkdir -p node && \
    ln -s ${NODE_PATH} node/bin
RUN bin/kibana --optimize

WORKDIR ${HOME}
CMD ["./run.sh"]

LABEL \
        License="Apache-2.0" \
        io.k8s.description="Kibana container for querying Elasticsearch for aggregated logs" \
        io.k8s.display-name="Kibana" \
        io.openshift.tags="logging,elk,kibana" \
        vendor="Red Hat" \
        name="openshift-logging/kibana6-rhel8" \
        com.redhat.component="logging-kibana6-container" \
        io.openshift.maintainer.product="OpenShift Container Platform" \
        io.openshift.build.commit.id=${CI_ORIGIN_AGGREGATED_LOGGING_UPSTREAM_COMMIT} \
        io.openshift.build.source-location=${CI_ORIGIN_AGGREGATED_LOGGING_UPSTREAM_URL} \
        io.openshift.build.commit.url=${CI_ORIGIN_AGGREGATED_LOGGING_UPSTREAM_URL}/commit/${CI_ORIGIN_AGGREGATED_LOGGING_UPSTREAM_COMMIT} \
        version=v6.8.1

