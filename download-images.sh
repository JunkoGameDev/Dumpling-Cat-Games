#!/usr/bin/env bash
# Downloads the four images from the Wix CDN into ./images
# Run once, then swap the <img src> URLs in index.html for images/<name>.
set -e
mkdir -p images
curl -sL -o images/logo.png     "https://static.wixstatic.com/media/8573d8_2f42c4ca6d1f48e984c600e8bcceba80~mv2.png/v1/crop/x_0,y_50,w_2048,h_1872/fill/w_1600,h_1462,al_c,q_90,enc_auto/logo.png"
curl -sL -o images/teaser.png   "https://static.wixstatic.com/media/8573d8_b68edc5979b24168a2478f1ade746e12~mv2.png/v1/fill/w_1600,h_1066,al_c,q_90,enc_auto/teaser.png"
curl -sL -o images/andrea.jpg   "https://static.wixstatic.com/media/8573d8_b9c798181e0640bdb918f00cbc4ade46~mv2.jpg/v1/fill/w_1200,h_673,al_c,q_85,enc_auto/andrea.jpg"
curl -sL -o images/valentino.jpg "https://static.wixstatic.com/media/8573d8_944bbef929684e01b7f5b6676dfaa578~mv2.jpg/v1/crop/x_0,y_622,w_2448,h_2642/fill/w_1200,h_1295,al_c,q_85,enc_auto/valentino.jpg"
echo "Done: $(ls images | wc -l) files in ./images"
