#!/bin/bash
: "${FITNESSE_CONTEXT_ROOT_ARG:=someContextRoot}"

sed -i "s|{FITNESSE_CONTEXT_ROOT}|${FITNESSE_CONTEXT_ROOT_ARG}|g" /usr/local/apache2/conf/extra/cora-vhosts.conf
sed -i "s|{ALVIN_CLIENT_CONTEXT_ROOT}|${ALVIN_CLIENT_CONTEXT_ROOT_ARG}|g" /usr/local/apache2/conf/extra/cora-vhosts.conf

supervisord -c /etc/supervisor/conf.d/supervisord.conf