FROM ubuntu 

WORKDIR /app

COPY requirements.txt requirements.txt

RUN apt-get install -y python3 python3-pip && \
    pip install -r requirements.txt

COPY . .

CMD ["python", "app.py","0.0.0.0:8000"]
