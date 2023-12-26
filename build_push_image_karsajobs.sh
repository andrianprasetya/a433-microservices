echo 'Build Dockerfile to image'
set -x
docker build -t ghcr.io/andrianprasetya/karsajobs-backend:latest  .
set +x
echo 'Login Github Packages'
set -x
echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u andrianprasetya --password-stdin
set +x
echo 'Push Image'
set -x
docker push ghcr.io/andrianprasetya/karsajobs-backend:latest
