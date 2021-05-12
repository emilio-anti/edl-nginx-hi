FROM kiwigrid/gcloud-kubectl-helm:latest
USER root
RUN apk add  wget gettext && \
    wget https://github.com/roboll/helmfile/releases/download/v0.139.2/helmfile_linux_amd6\4 -O helmfile && \
    chmod +x helmfile && \
    cp helmfile /usr/bin/ && \
    helmfile --version && \
    helm plugin install https://github.com/databus23/helm-diff && \
    helm plugin install https://github.com/zendesk/helm-secrets
