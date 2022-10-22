#!/usr/bin/python3
from PIL import Image
import os
import wget


# get list of images from file and download
with open('new.csv') as file:
    images = file.readlines()
for f in images:
    wget.download(eval(f))

#go through downloaded images and compress them
files = os.listdir()
base_width = 300
for file in files:
    if file.endswith('.png'):
        image = Image.open(file)
        width_percent = (base_width / float(image.size[0]))
        hsize = int((float(image.size[1]) * float(width_percent)))
        image = image.resize((base_width, hsize), Image.ANTIALIAS)
        image.save('reduced-{}'.format(file))
