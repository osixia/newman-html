FROM lachlanevenson/k8s-kubectl as kubectl_base 

FROM postman/newman:alpine
COPY --from=kubectl_base /usr/local/bin/kubectl /usr/local/bin/kubectl

RUN npm install -g newman-reporter-html
