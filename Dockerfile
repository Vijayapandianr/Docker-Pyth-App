# Format: FROM    repository[:version]
FROM ubuntu:latest
RUN apt update -y
RUN git clone git@bitbucket.org:User/repo.git
EXPOSE 5000
CMD ["app.py"]
