FROM kong:latest

# Copy file cấu hình Kong
COPY kong.yaml /etc/kong/kong.yaml

# Khởi động Kong với cấu hình declarative
CMD [ "kong", "start", "--vv" ]
