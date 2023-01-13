# Tabula-Docker

Just a extremely basic and low effort implementation of Tabula with Docker that I "developed" for personal use.

If you just want o run the awesome Tabula project without having to think about anything, then just git clone this and ```sudo docker-compose up -d``` or something.

If anyone actually end up finding this repo and using it, then I think that worth noting that for personal reasons I included in the ```entrypoint.sh``` a line that resets Tabula every time the container start. 
If you don't want that then just delete the line containing ```rm -rf /root/.tabula/*``` before building the container.
