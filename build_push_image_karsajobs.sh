echo 'Build Dockerfile to image'
set -x
docker build -t karsajobs:latest  .
set +x
echo 'List Image lokal'
set -x
docker images
set +x
echo 'Rename image format repository docker Hub'
set -x
docker tag karsajobs:latest phytagoras25/karsajobs:latest
set +x
echo 'Login Docker Hub'
set -x
echo $PASSWORD_DOCKER_HUB | docker login -u phytagoras25 --password-stdin
set +x
echo 'Push Image'
set -x
docker push phytagoras25/karsajobs:latest
