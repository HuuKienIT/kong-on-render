FROM kong/kong-gateway:latest

# Copy file cấu hình Kong
COPY kong.conf /etc/kong/kong.conf

# Biến môi trường từ Render Database
ENV KONG_DATABASE=postgres
ENV KONG_PG_HOST=${KONG_PG_HOST}
ENV KONG_PG_USER=${KONG_PG_USER}
ENV KONG_PG_PASSWORD=${KONG_PG_PASSWORD}
ENV KONG_PG_DATABASE=${KONG_PG_DATABASE}

EXPOSE 8000 8443 8001 8444

CMD ["kong", "start", "--conf", "/etc/kong/kong.conf"]
