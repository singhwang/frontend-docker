## 构建示例的前提条件:
```
已经使用base目录下的Dockerfile完成了horoscope/frontend:v1.0.0镜像的构建。
```


## Docker镜像构建示例:
```
git clone http://10.20.0.196/hor/frontend-docker.git
cd frontend-docker/
mkdir temp
git clone http://10.20.0.196/hor/hor-k8s-ui.git temp/
cp -r temp/. .
rm -rf temp/
docker build -t horoscope/frontend:v1.0.0 .
```