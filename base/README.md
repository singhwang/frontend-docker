## Docker镜像构建示例:
```
git clone http://10.20.0.196/hor/frontend-docker.git
cd frontend-docker/base/
mkdir temp
git clone http://10.20.0.196/hor/hor-k8s-ui.git temp/
cp -r temp/. .
rm -rf temp/
docker build -t horoscope/frontend-base:v1.0.0 .
```