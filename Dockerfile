FROM mcr.microsoft.com/azure-cli:2.9.1

RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 \
    && chmod +x get_helm.sh \
    && ./get_helm.sh \
    && rm get_helm.sh \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.15/bin/linux/amd64/kubectl \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl

