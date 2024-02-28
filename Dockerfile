FROM ubuntu 

WORKDIR /app

COPY requirements.txt requirements.txt

RUN sudo apt install python3-pip && /
    pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]
