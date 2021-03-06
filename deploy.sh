#!/bin/sh

CURDIR=`pwd`

echo -e "\033[0;32mGenerating site...\033[0m"
hugo

read -p "Commit and publish changes? [yn] " yn

case "${yn}" in
  [Yy]* )
    echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
    cd public && git add . && git commit -m "Publish website." && git push origin HEAD:main
    cd "${CURDIR}"
    exit 0
    ;;
  * )
    exit 0
    ;;
esac

