# Format: FROM    repository[:version]
FROM ubuntu:latest
RUN apt update -y
RUN apt install -y git
RUN git clone https://github.com/Vijayapandianr/Docker-Pyth-App.git
RUN wget https://releases.hashicorp.com/terraform/1.0.10/terraform_1.0.10_linux_amd64.zip
RUN unzip terraform_1.0.10_linux_amd64.zip
RUN terraform --version
EXPOSE 5000
CMD ["app.py"]
