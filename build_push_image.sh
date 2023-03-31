echo 'Build Dockerfile to image'
set -x
docker build -t item-app:v1 .
set +x
echo 'List Image lokal'
set -x
docker images
set +x
echo 'Rename image format repository docker Hub'
set -x
docker tag item-app:v1 phytagoras25/item-app:v1
set +x
echo 'Login Docker Hub'
set -x
echo $PASSWORD_DOCKER_HUB | docker login -u phytagoras25 --password-stdin
set +x
echo 'Push Image'
set -x
docker push phytagoras25/item-app:v1
