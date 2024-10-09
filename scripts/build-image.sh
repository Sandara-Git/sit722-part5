# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

docker build -t "$CONTAINER_REGISTRY/book_catalog:$VERSION" --file ./book_catalog/Dockerfile .

# Build the Docker image for inventory_management
docker build -t "$CONTAINER_REGISTRY/inventory_management:$VERSION" --file ./inventory_management/Dockerfile .