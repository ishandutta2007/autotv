#!/usr/bin/env bash

BASE="/home/sam/autotv/"

cd $BASE
source env/bin/activate

case $1 in scrape-homes)
  echo "Scraping homes"
  cd homeshow
  python scrape_and_prep.py
  ;;
generate-homes)
  echo "Generating homes"
  cd homeshow
  python compose.py
  ;;
generate-cops)
  echo "Generating cops"
  cd copshow
  python linked_in_scraper.py
  ;;
download-cooking)
  echo "Downloading cooking"
  cd cookingshow2
  wget -N http://159.65.190.4/cookingshow.mp4
  ;;
generate-cooking)
  echo "Generating cooking"
  cd cookingshow2
  python compose.py
  ;;
generate-shopping)
  echo "Generating shopping"
  cd shoppingshow
  python get_baba.py
  ;;
*)
  echo "none"
  ;;
esac
