# Format: FROM    repository[:version]
FROM ubuntu:latest
RUN apt update -y
RUN apt install -y git
RUN git clone https://github.com/Vijayapandianr/Docker-Pyth-App.git
EXPOSE 5000
CMD ["app.py"]
