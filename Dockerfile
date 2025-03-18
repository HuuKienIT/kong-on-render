FROM kong:latest

# Copy file cấu hình vào container
COPY kong.yml /usr/local/kong/declarative/kong.yml

# Khởi động Kong với cấu hình DB-less
CMD ["kong", "start", "--conf", "/usr/local/kong/declarative/kong.yml"]
