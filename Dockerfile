FROM nginx:alpine
LABEL org.opencontainers.image.title="workstation-web" \
      org.opencontainers.image.description="Codyssey workstation custom nginx"
ENV APP_ENV=dev
COPY site/ /usr/share/nginx/html/
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s CMD wget -q --spider http://localhost/ || exit 1
