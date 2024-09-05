## Подготовка машины Ubuntu 22.04

###  Установите Docker с помощью скрипта
```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh --channel stable
```



## Запуск скрипта который старутет контейнеры и настраивает прокисрование nginx 

###  Сделайте скрипт выполняемым и запустите его
```
chmod +x script.sh
./script.sh
```
