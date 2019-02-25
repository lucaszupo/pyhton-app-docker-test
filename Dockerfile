FROM python:3.6.8-alpine3.8

COPY . .
CMD ["python","app.py"]

