FROM python:3.6.15-slim-buster 
COPY . ./
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -r ./requirements.txt
RUN apt update
WORKDIR /app/hello
EXPOSE 5000
CMD ["flask", "run","--host=0.0.0.0"]


