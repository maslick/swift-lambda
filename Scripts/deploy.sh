echo "building, packaging..."
sh ./Scripts/build-and-package.sh

echo "sls deploy..."
sls deploy