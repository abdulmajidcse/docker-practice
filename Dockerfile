FROM python:3

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "./myapp.py"]

# build the image
# docker build -t python-docker-practice .
# run the image
# docker run --rm python-docker-practice
# run the image without building
# docker run -it --rm --name python-docker-practice  -v "$(PWD):/app" -w /app python-docker-practice
# run a specific file
# docker run -it --rm --name python-docker-practice -v "$(PWD):/app" -w /app python-docker-practice python test.py
