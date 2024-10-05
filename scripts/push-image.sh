# Your Solution

# Publishes a Docker image.

set -u # or set -o nounset
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"
: "$NAME"

echo $REGISTRY_PW | docker login week9task2.azurecr.io --username $REGISTRY_UN --password-stdin
echo "Pushing image: week9task2.azurecr.io/$NAME:$VERSION"
docker push week9task2.azurecr.io/$NAME:$VERSION