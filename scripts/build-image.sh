# Your Solution

# Builds a Docker image.

set -u # or set -o nounset
: "$VERSION"
: "$NAME"

echo "Building image: week9task2.azurecr.io/$NAME:$VERSION"
docker build -t week9task2.azurecr.io/$NAME:$VERSION --file ./$NAME/Dockerfile ./$NAME