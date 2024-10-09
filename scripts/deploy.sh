# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

envsubst < ./book_catalog/deployment.yaml | kubectl apply -f -
envsubst < .inventory_management/deployment.yaml | kubectl apply -f -