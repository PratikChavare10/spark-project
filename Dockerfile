FROM Openjdk:11-jre-slim

RUN apt-get update && apt-get install -y python3 python3-pip && rm -rf /var/lib/apt/lists/*

RUN pip3 install pyspark

WORKDIR /app

COPY . /app

CMD ["python3", "main.py"]