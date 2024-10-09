# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"

echo "$REGISTRY_PW" | docker login "$CONTAINER_REGISTRY" --username "$REGISTRY_UN" --password-stdin

# Push the Docker image for book_catalog
docker push "$CONTAINER_REGISTRY/book_catalog:$VERSION"

# Push the Docker image for inventory_management
docker push "$CONTAINER_REGISTRY/inventory_management:$VERSION"