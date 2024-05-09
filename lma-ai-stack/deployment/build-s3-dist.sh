if [ -z "$1" ]; then
    echo "usage: $0 <base source bucket name> [<solution name or s3 prefix>] [<version>] [<region>]"
    echo
    echo "Please provide the base source bucket name, trademark approved solution name and version where the lambda code will eventually reside."
    echo "For example: ./build-s3-dist.sh solutions trademarked-solution-name v1.0.0 us-east-1"
    exit 1
fi

export RELEASE_S3_BUCKET_BASE="$1"

export RELEASE_S3_PREFIX="${2:-artifacts/lca}"

if [ ! -z "$3" ]; then
    export RELEASE_VERSION="${3}"
fi

if [ -z "$4" ]; then
    export AWS_REGION=${AWS_REGION:-us-east-1}
else
    export AWS_REGION="$4"
fi

TEMPLATE_DIR=$(dirname "$(readlink -f "$0")")
export TEMPLATE_FILE="$TEMPLATE_DIR/lma-ai-stack.yaml"

cd "${TEMPLATE_DIR}/.."

make release

cd ml-stacks
make release
