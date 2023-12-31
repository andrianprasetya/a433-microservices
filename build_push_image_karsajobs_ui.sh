echo 'Build Dockerfile to image'
set -x
docker build -t ghcr.io/andrianprasetya/karsajobs-frontend:latest  .
set +x
echo 'Login Github Packages'
echo "GitHub Packages Password: $PASSWORD_GITHUB_PACKAGES"
set -x
echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u andrianprasetya --password-stdin
set +x
echo 'Push Image'
set -x
docker push ghcr.io/andrianprasetya/karsajobs-frontend:latest
