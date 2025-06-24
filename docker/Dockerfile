FROM httpd:2

# Add reverse proxy conf
COPY apache/alvin-proxy-vhosts.conf /usr/local/apache2/conf/extra/alvin-proxy-vhosts.conf
RUN echo "Include conf/extra/alvin-proxy-vhosts.conf" \
    >> /usr/local/apache2/conf/httpd.conf

# Expose HTTP port
EXPOSE 80

# Run Apache in the foreground
CMD ["httpd-foreground"]