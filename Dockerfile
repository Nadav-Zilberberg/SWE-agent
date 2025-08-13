FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
        git \
        docker.io \
        && rm -rf /var/lib/apt/lists/*

COPY . /app

RUN pip install --upgrade pip \
 && pip install -r requirements.txt \
 && pip install -e .

ENTRYPOINT ["sweagent"]