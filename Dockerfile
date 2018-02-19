#
# Tesseract 4 OCR Runtime Environment - Docker Container
#

FROM ubuntu:16.04

RUN apt-get update && apt-get install -y software-properties-common && add-apt-repository -y ppa:alex-p/tesseract-ocr
RUN apt-get update && apt-get install -y tesseract-ocr 

EXPOSE 8080
RUN mkdir /home/work
WORKDIR /home/work
