#!/bin/bash

############################################################
# Default values                                           #
############################################################

# todo: link=""
imgtype="png"
imgdir="./downloadedPages"

############################################################
# Help                                                     #
############################################################
Help()
{
   # Display Help
   echo "This script downloads images from the given url"
   echo
   echo "Syntax: pageDownload.sh [-h] [url] [chapter] [first] [last] [type]"
   echo "params:"
   echo "url        url, ie. http://example.com/"
   echo "chapter    chapter, ie. 0237, default 0001"
   echo "first      [optional] starting page, ie. 1, default 1"
   echo "last       [optional] last page, ie. 15, default 10"
   echo "type       [optional] image type, ie. jpeg, default png"
   echo "options:"
   echo "h          Print this Help."
   echo
}

while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
      \?) # incorrect option
         echo "Error: Invalid option"
         exit;;
   esac
done

############################################################
# Main program                                             #
############################################################

link=$1
chapter=$2
start=$3
end=$4
type=$5

if [ -z "$url" ]; then
    url=$link
fi

if [ -z "$chapter" ]; then
    chapter="0001"
fi

if [ -z "$start" ]; then
    start=1
fi

if [ -z "$end" ]; then
    end=10
fi

if [ -z "$type" ]; then
    type=$imgtype
fi

for ((i=start; i<=end; i++)); do
  page=$(printf "%03d" $i)
  echo Downloading $url$chapter-$page.$type...

  wget -r -l1 -nd -nH -P $imgdir -A jpg,jpeg,png,gif,svg $url$chapter-$page.$type
  wgetreturn=$?

  if [[ $wgetreturn -ne 0 ]]; then
      echo "Getting image failed. Is the url correct?"
      echo $url$chapter-$page.$type
      break
  fi
done

echo "Done."

############################################################
# Copyright: Tina H.                                       #
# https://github.com/sevject/chapter-page-downloader       #
# License: GPLv3                                           #
############################################################
