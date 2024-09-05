# Запуск контейнеров
cd grafana-project
docker compose up -d

# Установка Nginx
sudo apt install -y nginx

# Настройка Nginx для проксирования Grafana
sudo bash -c 'cat <<EOF > /etc/nginx/sites-available/default
server {
    listen 80;
    server_name localhost;
    location / {
        proxy_pass http://localhost:3000;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}
EOF'

sudo systemctl restart nginx