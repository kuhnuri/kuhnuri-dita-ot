FROM openjdk:10

ENV VERSION=3.1.3

RUN curl -sLo /tmp/dita-ot-$VERSION.zip https://github.com/dita-ot/dita-ot/releases/download/$VERSION/dita-ot-$VERSION.zip && \
    unzip /tmp/dita-ot-$VERSION.zip -d /tmp/ && \
    rm /tmp/dita-ot-$VERSION.zip && \
    mkdir -p /opt/app/ && \
    mv /tmp/dita-ot-$VERSION/bin /opt/app/bin && \
    chmod 755 /opt/app/bin/dita && \
    mv /tmp/dita-ot-$VERSION/config /opt/app/config && \
    mv /tmp/dita-ot-$VERSION/lib /opt/app/lib && \
    mv /tmp/dita-ot-$VERSION/plugins /opt/app/plugins && \
    mv /tmp/dita-ot-$VERSION/xsl /opt/app/xsl && \
    mv /tmp/dita-ot-$VERSION/build_template.xml /opt/app/build_template.xml && \
    mv /tmp/dita-ot-$VERSION/catalog-dita_template.xml /opt/app/catalog-dita_template.xml && \
    mv /tmp/dita-ot-$VERSION/integrator.xml /opt/app/integrator.xml && \
    rm -r /tmp/dita-ot-$VERSION && \
    /opt/app/bin/dita --install
ENV DITA_HOME=/opt/app
WORKDIR $DITA_HOME
