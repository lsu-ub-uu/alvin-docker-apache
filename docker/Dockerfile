ARG CORA_DOCKER_VERSION=toBeSet
FROM cora-docker-apache:${CORA_DOCKER_VERSION}

# Add reverse proxy conf
COPY files/apache/alvin-proxy-vhosts.conf /usr/local/apache2/conf/extra/alvin-proxy-vhosts.conf
RUN echo "Include conf/extra/alvin-proxy-vhosts.conf" \
    >> /usr/local/apache2/conf/httpd.conf

# Run Apache in the foreground
CMD ["supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]