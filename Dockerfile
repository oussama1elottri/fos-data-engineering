FROM python:3.11.3-alpine
COPY . .
CMD python etl.py


# FROM python:3.11.3-alpine
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt
