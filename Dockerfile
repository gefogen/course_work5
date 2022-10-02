FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

CMD gunicorn -b 0.0.0.0:80 -w 4 app:app