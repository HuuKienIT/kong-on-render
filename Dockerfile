FROM kong:latest

# Copy file cấu hình vào container
COPY kong.yml /usr/local/kong/declarative/kong.yml

# Đặt quyền cho Kong chạy không cần root
USER kong

# Khởi động Kong với cấu hình DB-less
CMD ["kong", "start", "--conf", "/usr/local/kong/declarative/kong.yml"]
