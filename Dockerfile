# Format: FROM    repository[:version]
FROM ubuntu:latest
RUN apt update -y
RUN  apt install -y build-essential python3-pip python-dev
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
EXPOSE 5000
CMD ["app.py"]
