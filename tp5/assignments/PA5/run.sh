# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37
# And then use them like this in your script:

BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color
# printf "I ${RED}love${NC} Stack Overflow\n"

make > /dev/null && make cgen > /dev/null && printf "${RED} OK ${NC}"
./mycoolc -c example.cl
printf "${BLUE}----------------------------------------------------------${NC}\n"
spim example.s