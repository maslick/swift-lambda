set -eu

executable="MyLambda"

echo "preparing docker build image"
docker build --platform=linux/amd64 . -t builder
echo "done"

echo "building executable"
docker run --platform=linux/amd64 --rm -v "$(pwd)":/workspace -w /workspace builder bash -cl "swift build --product $executable -c release -Xswiftc -g"
echo "done"

echo "packaging lambda"
docker run --platform=linux/amd64 --rm -v "$(pwd)":/workspace -w /workspace builder bash -cl "./scripts/package.sh $executable"