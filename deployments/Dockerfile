FROM node
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install gitbook-cli -g
RUN gitbook -V
# gitbook bugfix https://github.com/GitbookIO/gitbook-cli/issues/55#issuecomment-455150519
RUN sed -i '/confirm/d' /root/.gitbook/versions/3.2.3/lib/output/website/copyPluginAssets.js
RUN npm config set registry https://registry.npm.taobao.org
RUN mkdir /gitbook
WORKDIR /gitbook
ENTRYPOINT ["/bin/bash", "-c", "gitbook install && gitbook serve"]