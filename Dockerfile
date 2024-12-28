FROM node:22

WORKDIR /app

COPY . .

CMD ["node", "index.js"]

# build the image
# docker build -t nodejs-docker-practice .
# run the image
# docker run --rm nodejs-docker-practice
# run the image without building
# docker run -it --rm --name nodejs-docker-practice  -v "$(PWD):/app" -w /app nodejs-docker-practice
# run a specific file
# docker run -it --rm --name nodejs-docker-practice -v "$(PWD):/app" -w /app nodejs-docker-practice node test.js
