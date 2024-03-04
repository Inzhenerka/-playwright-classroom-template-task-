FILE=$1     
TEST=$2
if [ -f $FILE ]; then
   echo "File exists."
   npm install
   npx playwright install && npx playwright install-deps chromium
   npx playwright test -g "$TEST"
else
   echo "File $FILE does not exist."
fi