#!/command/with-contenv sh

set -x

if [ -n "${GIT_URL}" ]
then
    REPO=$(echo "${GIT_URL}" | awk -F '/' '{print $NF}' | cut -d'.' -f1) && \
        mkdir -p /config/workspace && \
        git clone "$GIT_URL" /config/workspace/${REPO} && \
        cp -rn /usr/local/share/template/goservice/. /config/workspace/${REPO} && \
        chown -R abc:abc /config
fi
