FROM python:3.10-alpine

COPY . .
CMD ["python","app.py"]

