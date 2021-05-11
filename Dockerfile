FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
ADD hello.conf /etc/nginx/conf.d/
ADD ./nginx.conf.template /etc/nginx/conf.d/default.template
ADD index.html /usr/share/nginx/html/
CMD sh -c "export DOLLAR='$' && envsubst < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/hello.conf && nginx -g 'daemon off;'"
