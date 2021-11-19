FROM python:3.6-alpine
WORKDIR /app
ADD app/requirements.txt /app
RUN apk update
RUN pip install -r requirements.txt
ADD app/ /app
CMD python app.py
