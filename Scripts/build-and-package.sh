set -eu

executable="MyLambda"
# platflorm="linux/amd64"
platflorm="linux/arm64"


echo "preparing docker build image"
docker build --platform=$platflorm . -t builder
echo "done"

echo "building executable"
docker run --platform=$platflorm --rm -v "$(pwd)":/workspace -w /workspace builder bash -cl "swift build --product $executable -c release -Xswiftc -g"
echo "done"

echo "packaging lambda"
docker run --platform=$platflorm --rm -v "$(pwd)":/workspace -w /workspace builder bash -cl "./Scripts/package.sh $executable"