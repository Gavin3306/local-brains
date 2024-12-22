# start web-ui

#
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR/packages/web-ui" || exit
echo "web-ui path: $(pwd)"

#
echo -e "Step 1/3: Installing global yarn..."
npm install yarn -g & pid1=$!
wait $pid1

#
echo -e "Step 2/3: Installing dependencies..."
yarn install & pid2=$!
wait $pid2

#
echo -e "Step 3/3: Starting web-ui..."
yarn dev # yarn dev 是一个持续运行的命令，后续的命令不会执行






