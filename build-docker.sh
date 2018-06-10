REPO=painejs/pantry-for-good

docker login -e $QUAYIO_EMAIL -u $QUAYIO_USERNAME -p $QUAYIO_PASSWORD

docker build -t $REPO
docker tag $REPO $REPO:latest
docker tag $REPO $REPO:$TRAVIS_TAG
docker push $REPO
