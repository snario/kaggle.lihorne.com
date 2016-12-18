DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Setup environment
source "$DIR/env.sh"

# Build the notebook image
docker-compose -f "$DIR/notebook.yml" build
