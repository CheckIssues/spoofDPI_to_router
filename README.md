Собираюсь поставить на роутер  . . .   

FT-AIR-DUO-G MT7621 CPU, MT7615DN 2T2R DBDC, 1000FDX

[Wive-NG-HQ:/home]$ 
````uname -m```` =  mips  
 ````uname -a````  =   ````Linux Wive-NG-HQ 3.4.114.313 #1 SMP 21042023 mips GNU/Linux```` 

https://github.com/xvzc/SpoofDPI#installation
  
````sh 
curl -fsSL https://raw.githubusercontent.com/xvzc/SpoofDPI/main/install.sh | bash -s linux-mips
````
https://github.com/xvzc/SpoofDPI/issues/88
( скрипты для установки и запуска, как это работает: https://github.com/gray1717/spoofDPI_to_router , на openwrt просто бинарник надо в другую папку положить для своего железа )

и сразу ошибка на первом же шаге ))
````sh 
[Wive-NG-HQ:/home]$ curl -fsSL https://raw.githubusercontent.com/xvzc/SpoofDPI/main/install.sh |
bash -s linux-mips
````
![image](https://github.com/user-attachments/assets/6162abca-3067-406f-bff8-8e560502f58d)



========================

# spoofDPI to router
Скрипт установки [spoofDPI](https://github.com/xvzc/SpoofDPI) на роутер, с установленным репозитарием [Entware](https://github.com/Entware/Entware), для обхода блокировки youtube в России

# Установка:
>Проверьте ваше устройство ````uname -m````, должно быть что-то из этого: ````aarch64````, ````mips````, ````mipsel````

Необходимо подключить репозитарй [Entware](https://github.com/Entware/Entware) и установить из него пакеты dtach и curl
````sh
opkg install dtach curl
````
spoofDPI
````sh
curl https://raw.githubusercontent.com/gray1717/spoofDPI_to_router/main/install.sh | bash
````
проверьте настройки, по необходимости измените прослушиваемый адрес и порт
````
/opt/etc/spoofDPI/spoofDPI.conf
````
запустите spoofDPI
````sh
sh /opt/etc/init.d/S8080spoofDPI start
````
Настройте proxy в браузере, укажите порт из конфигурационного файла ````/opt/etc/spoofDPI/spoofDPI.conf```` и адрес роутера
