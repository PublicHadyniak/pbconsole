GREEN='\033[1;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

printf "${YELLOW}Updating libprogbase code...${NC}\n"
# pull latest repo code
git pull origin master
# fetch release tags from remote
git fetch --tags
# get latest release tag
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
# checkout to latest release code
git checkout $latestTag

printf "${YELLOW}Installing libprogbase $latestTag:${NC}\n"
echo "Building and installing libprogbase..."
# clean and make build directory
rm ./build -rf && mkdir ./build
# build nd install static library with cmake
cd ./build && cmake .. && make && sudo make install && cd ../
# cleanup build directory
rm ./build -rf

# check installed library version
printf "${YELLOW}Checking installed version:${NC}\n"
make version

# return from git `detached HEAD` state
git checkout master