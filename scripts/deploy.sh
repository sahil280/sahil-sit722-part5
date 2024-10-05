# Your Solution

# Deploys a microservice to Kubernetes.

set -u # or set -o nounset
: "$NAME"
: "$VERSION"

echo "Deploying image: week9task2.azurecr.io/$NAME:$VERSION"

# Update the image tag in the Kubernetes deployment file
sed -i "s|image: week9task2.azurecr.io/$NAME:.*|image: week9task2.azurecr.io/$NAME:$VERSION|g" ./scripts/kubernetes/$NAME.yaml

# Apply the Kubernetes configuration
kubectl apply -f ./scripts/kubernetes/$NAME.yaml