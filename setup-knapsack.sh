

 
echo TOTAL $TOTAL
echo INDEX $INDEX
export KNAPSACK_API_KEY=NWYxMGZkMzAxNjdlNzZmNTg2ZjkxZDFkOGM3YzRiY2UK
#TOKEN= ${base64 -d $KNAPSACK_API_KEY}
TOKEN=`echo $KNAPSACK_API_KEY | base64 -d`
echo $TOKEN 
export KNAPSACK_PRO_COMMIT_HASH=1234
export KNAPSACK_PRO_BRANCH=master 
export KNAPSACK_PRO_CI_NODE_BUILD_ID=12345
export KNAPSACK_PRO_TEST_SUITE_TOKEN_JEST=$TOKEN
export KNAPSACK_PRO_CI_NODE_TOTAL=4
export KNAPSACK_PRO_CI_NODE_INDEX=${hostname##*-}

echo index $KNAPSACK_PRO_CI_NODE_INDEX          
sh -c ./node_modules/@knapsack-pro/jest/lib/knapsack-pro-jest.js . >/dev/null