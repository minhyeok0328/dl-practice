FROM continuumio/miniconda3:latest

ENV MINICONDA_PATH "/home/user/miniconda3"
ENV PATH="${MINICONDA_PATH}/bin:${PATH}"

RUN apt-get update -y && apt-get install git vim -y

WORKDIR /app

ENTRYPOINT ["tail", "-f", "/dev/null"]
