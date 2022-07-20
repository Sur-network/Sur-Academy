<div dir="rtl">

## دستورالعمل راه اندازی نود بلاکچین سور ##

نیازمندی ها:

- Ubuntu Server 18.02 or 20.02
- Minumum 4 GB of Ram
- Minimum 100 GB of Disk Space


پس از نصب اوبانتو به خط فرمان بروید و تایپ کنید:

```
sudo apt update -y
sudo apt upgrade -y
sudo apt  install docker.io 
```
  
سپس فایل سورنت را از این آدرس دانلود کنید:

https://drive.google.com/file/d/1mNoezsv3K7DLDA2iZmssNhhsiRQlgr-3

می توانید آن را توسط gdown دانلود کنید.
  
https://stackoverflow.com/questions/25010369/wget-curl-large-file-from-google-drive  
  
```
gdown https://drive.google.com/u/0/uc?id=1mNoezsv3K7DLDA2iZmssNhhsiRQlgr-3
```

در همان محلی که فایل دانلود شده دستور زیر را برای اضافه کردن این فایل به لیست ایمیج های موجود داکر خود به کار می بریم:


```
sudo docker load --input surnet.tar
```

برای مشاهده ایمیجی که اضافه شده:

```
sudo docker images
```

به طور مثال:

```
REPOSITORY   TAG       IMAGE ID       CREATED        SIZE
surnet       1.0       3cff40edb42b   7 months ago   526MB

```

3cff40edb42b کانتینر آی دی ما میباشد

برای اجرای ایمیج از این آی دی به این شکل استفاده میکنیم:

```
sudo docker run -d 3cff40edb42b
```

با دستور زیر لاگ مربوط به کانتینر مشاهده میشود:

```
sudo docker logs 3cff40edb42b
```
  
برای فعال شدم rpc از این دستور استفاده کنید:
  
```
sudo docker run -d -p 8545:8545 -p 30303:30303 "3cff40edb42b" --rpc-http-enabled --rpc-http-host=0.0.0.0 --host-allowlist="*" --rpc-http-api=ETH, NET, WEB3, IBFT
```

برای خروج از حالت لاگ Control+c را بزنید.
</div>
