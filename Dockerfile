FROM openjdk:10

RUN curl -sLo /tmp/dita-ot-3.1.2.zip https://github.com/dita-ot/dita-ot/releases/download/3.1.2/dita-ot-3.1.2.zip && \
    unzip /tmp/dita-ot-3.1.2.zip -d /tmp/ && \
    rm /tmp/dita-ot-3.1.2.zip && \
    mkdir -p /opt/app/ && \
    mv /tmp/dita-ot-3.1.2/bin /opt/app/bin && \
    chmod 755 /opt/app/bin/dita && \
    mv /tmp/dita-ot-3.1.2/config /opt/app/config && \
    mv /tmp/dita-ot-3.1.2/lib /opt/app/lib && \
    mv /tmp/dita-ot-3.1.2/plugins /opt/app/plugins && \
    mv /tmp/dita-ot-3.1.2/xsl /opt/app/xsl && \
    mv /tmp/dita-ot-3.1.2/build_template.xml /opt/app/build_template.xml && \
    mv /tmp/dita-ot-3.1.2/catalog-dita_template.xml /opt/app/catalog-dita_template.xml && \
    mv /tmp/dita-ot-3.1.2/integrator.xml /opt/app/integrator.xml && \
    rm -r /tmp/dita-ot-3.1.2 && \
    /opt/app/bin/dita --install
ENV DITA_HOME=/opt/app
WORKDIR $DITA_HOME
