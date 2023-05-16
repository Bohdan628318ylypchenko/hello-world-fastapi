FROM python:3.11-alpine

WORKDIR /app
COPY requirements.txt .

RUN pip install -r requirements.txt

COPY main.py .

#CMD [ "uvicorn", "main:app", "--reload", "--port", "80"]
CMD [ "python", "main.py" ]